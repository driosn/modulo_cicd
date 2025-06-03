import 'dart:ui';

const double paddingRatio = 15;

//
// TextFactor
//
const double defaultTextFactor = 1.0;

///
/// Show relational spaces for vertical spacing
///
const bool showRelationalSpaces = false;

///
/// Relational spaces for vertical spacing
///
double relationalSpaceHeight = 0;
//
// Max Length
//
const int maxLengthNine = 9;
const int maxLengthFive = 5;
const int maxLengthThree = 3;
const int maxLengthTwenty = 20;

//
// Progress Indicator
//
const double defaultProgressIndicatorSize = 56.0;
const int progressIndicatorDots = 16;

//
// CashPay
//
const String zegoPayUrl = 'https://www.paylease.com/cashpay/locations?crd=1&vpw=1512';
const String westernUnionPayUrl =
    'https://location.westernunion.com/global-services/find-locations?WUCountry=US&WULanguage=en';

//
// Pay By Text
//

const payByTextDebitAuthorization = """
By enabling Pay By Text, you understand, acknowledge and agree that:

At any time, by responding with the last four digits of your cell phone (“Cell Phone”) to the bill received by text, you authorize us to and request that we debit your bank account for the outstanding amount that is due on your account as of the day we receive your text message.

At all times during which your authorization to this service applies, you will use security authentication (e.g., password or biometric authentication) on your Cell Phone.

Text messaging rates from your Cell Phone provider may apply; and,

If the total outstanding amount due is not available in your bank account you will be charged late fees and/or dishonored check fees per your Lease or Rental Agreement, as well as any insufficient funds or overdraft fees that may be charged by your bank; and, it is your responsibility to update your bank account information as needed and to assure that sufficient available funds are maintained to pay the amount authorized by text.

You further understand, acknowledge, and agree that selecting “Enable Pay By Text” represents your electronic signature (otherwise known as a “writing signed by you”) to authorize the text payments described above.

Payment(s) made are reflected in Mountain Time and may take up to 24-48 hours to post.
""";

//
// AppBar
//
const double appBarDividerHeight = 5.0;

///
/// KEYS
/// Used for Flutter Secure Storage
///
const String tokenKey = 'token';
const String userIdKey = 'userId';
const String userNameKey = 'userName';
const String passKey = 'pass';
const String biometricsFirstTimeKey = 'biometicsFirstTime';
const String biometricAuthenticationEnabledKey = 'biometicsAuthenticationEnabled';

///
/// Scale Factor
///
/// IOS
const double iOSNegative3ScaleFactor = 0.8235294117647058;
const double iOSNegative2ScaleFactor = 0.8823529411764706;
const double iOSNegative1ScaleFactor = 0.9411764705882353;
const double iOSDefaultScaleFactor = 1.0;
const double iOSPositive1ScaleFactor = 1.1176470588235294;
const double iOSPositive2ScaleFactor = 1.2352941176470589;
const double iOSPositive3ScaleFactor = 1.3529411764705883;
const double iOSPositive4ScaleFactor = 1.6470588235294117;
const double iOSPositive5ScaleFactor = 1.9411764705882353;
const double iOSPositive6ScaleFactor = 2.3529411764705883;
const double iOSPositive7ScaleFactor = 2.764705882352941;
const double iOSPositive8ScaleFactor = 3.1176470588235294;

/// Android
const double androidSmallScaleFactor = 0.85;
const double androidDefaultScaleFactor = 1.0;
const double androidLargeScaleFactor = 1.15;
const double androidLargestScaleFactor = 1.3;

const Color colorPlaceHolder = Color.fromRGBO(222, 2, 153, 1);

//
// Make a Payment
//
const defaultRentReferenceId = '0';
const defaultRentLabel = 'Rent';

const int defaultPayDay = 0;
const emailPattern = r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';

///
/// languagePreferencesKeys
///
const kLanguagePrefsKey = 'language';

///
/// whiteLabelLogoPreferencesKeys
///
const kWhitelabelSettingsKey = 'whiteLabelSettings';

///
/// Autopay Settings Values
///
const isEverywareCashPayConfigured = "isEverywareCashPayConfigured";

///
/// Autopay Settings Values
///

const String rentReferenceId = '0';
const deleteMyAccountfeature = "deleteMyAccount";
