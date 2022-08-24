import 'package:ecommerce_app/src/features/authentication/domain/app_user.dart';
import 'package:ecommerce_app/src/utils/in_memory_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FakeAuthRepository {
  final _authState = InMemotryStore<AppUser?>(null);

  @override
  Stream<AppUser?> authStateChanges() =>
      _authState.stream; // User is not authenticated
  @override
  AppUser? get currentUser => _authState.value;

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    if (currentUser == null) {
      _authState.value = AppUser(
        uid: email.split('').reversed.join(),
        email: email,
      );
    }
  }

  @override
  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    if (currentUser == null) {
      _createNewUser(email);
    }
  }

  @override
  Future<void> signOut() async {
    await Future.delayed(const Duration(seconds: 3));
    throw Exception('Connection failed');
    _authState.value = null;
  }

  void dispose() => _authState.close();

  void _createNewUser(String email) {
    if (currentUser == null) {
      _authState.value = AppUser(
        uid: email.split('').reversed.join(),
        email: email,
      );
    }
  }
}

final authRepositoryProvider = Provider<FakeAuthRepository>((ref) {
  final auth = FakeAuthRepository();
  ref.onDispose(() => auth.dispose());
  return auth;
});

final authStateChangesProvider = StreamProvider.autoDispose<AppUser?>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.authStateChanges();
});
