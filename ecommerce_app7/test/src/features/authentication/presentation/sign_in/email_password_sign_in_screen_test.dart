import 'package:ecommerce_app/src/features/authentication/auth_robot.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks.dart';

void main() {
  const testEmail = 'test@test.com';
  const testPassword = '1234';
  late MockAuthRepository authRepository;
  setUp(() {
    authRepository = MockAuthRepository();
  });
  group('sign in', () {
    testWidgets('''
        Given formType is signIn
        When tap on the sign-in button
        Then signInWithEmailAndPassword is not called
        ''', (tester) async {
      final r = AuthRobot(tester);
      await r.pumpEmailPasswordSignInContents(
        authRepository: authRepository,
        formType: EmailPasswordSignInFormType.signIn,
      );
      await r.tapEmailAndPasswordSubmitButton();
      verifyNever(() => authRepository.signInWithEmailAndPassword(
            any(),
            any(),
          ));
    });
  });
}
