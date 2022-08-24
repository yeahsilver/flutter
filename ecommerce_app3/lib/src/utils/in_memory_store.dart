import 'package:rxdart/subjects.dart';

// An in-memory store bavked by BehaviorSubject that can be used to
// store the data for all the fake repositories in the app
class InMemotryStore<T> {
  // we can use it in multiple places with different type
  // We don't want to pass the BehaviorSubject as a constructor argument evrytime we create an in-memory store
  // The fact that we use BehaviorSubject should be an implementation detail

  // seeded: to pass the initial value that comes from the constructor
  // =>  Pass the initial stream value as a constructor argument
  InMemotryStore(T initial) : _subject = BehaviorSubject<T>.seeded(initial);
  final BehaviorSubject<T> _subject;

  // Taking the value that is given to the setter and add it to our subject.
  // This will cause our stream to emit a new value if it's listented to.
  Stream<T> get stream => _subject.stream;

  // To access the new value synchronously
  T get value => _subject.value;

  // add the value to the BehaviorSubject
  set value(T value) => _subject.add(value);

  void close() => _subject.close();
}
