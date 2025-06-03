
//Base class so we can create feature flags with different data types 
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:resident_app/core/flags/feature_value_notifier.dart';

abstract class BaseFeatureFlag<T> {
  final String key; 
  final FeatureValueNotifier<T> notifier; 
  final T _initialValue; 

  BaseFeatureFlag({
    required this.key,
    required T initialValue,
  })  : notifier = FeatureValueNotifier(initialValue),
        _initialValue = initialValue;

  T get value => notifier.value;

  T get initialValue => _initialValue;

  set value(T newValue) {
    notifier.value = newValue;
  }

  void reset() {
    notifier.value = _initialValue;
  }

  void listen(ListenFeatureChangeCallback<T> callback) =>
      notifier.listen(callback);

  //todo probably we can deacoplate from firebaseRometoConfig into genericFlashConfigurer
  void syncValue(FirebaseRemoteConfig configUpdater);
}