class PaymentDateViewParams {
  bool isReviewView = false;
  bool isAutoPayLandingView = false;

  static final PaymentDateViewParams _instance =
      PaymentDateViewParams._internal(
    isReviewView: false,
    isAutoPayLandingView: false,
  );

  PaymentDateViewParams._internal({
    required this.isReviewView,
    required this.isAutoPayLandingView,
  });

  factory PaymentDateViewParams({
    bool? isReviewView,
    bool? isAutoPayLandingView,
  }) {
    _instance.isReviewView = isReviewView ?? _instance.isReviewView;
    _instance.isAutoPayLandingView =
        isAutoPayLandingView ?? _instance.isAutoPayLandingView;
    return _instance;
  }

  void update({
    bool? isReviewView,
    bool? isAutoPayLandingView,
  }) {
    if (isReviewView != null) {
      _instance.isReviewView = isReviewView;
    }
    if (isAutoPayLandingView != null) {
      _instance.isAutoPayLandingView = isAutoPayLandingView;
    }
  }

  bool get getIsReviewView => _instance.isReviewView;

  bool get getIsAutoPayLandingView => _instance.isAutoPayLandingView;
}
