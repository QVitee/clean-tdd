class CoreConstants {
  CoreConstants._();

  static const hyphen = '-';
  static const underline = '_';
  static const plus = '+';
  static const mul = 'x';
  static const mark = '#';
  static const markStar = '*';
  static const colon = ':';
  static const percentage = '%';
  static const dateFormatEEEEddMMyyyy = 'EEEE, dd/MM/yyyy';
  static const dateFormatHHmmaddMMyyyy = 'HH:mm a - dd/MM/yyyy';
  static const dateFormatHHmmddMMyyyy = 'HH:mm dd/MM/yyyy';
  static const dateFormatddMMyyyy = 'dd/MM/yyyy';
  static const dateFormatYYYYMMDD = 'yyyy/MM/dd';
  static const dateFormatMMMMyyyy = 'MMMM, yyyy';
  static const dateFormatMMyyyy = 'MM, yyyy';
  static const dateFormatddMMyyyyHHmm = 'dd/MM/yyyy HH:mm';
  static const timeFormatHHmm = 'HH:mm';
  static const dateFormatddMM = 'dd/MM';
  static const nameOfDay = 'EEE';
  static const decimalFormat = '#,###';
  static const dateFormatDashYYYYMMDD = 'yyyy-MM-dd';
}

class LocaleCodes {
  LocaleCodes._();

  static const vi = 'vi';
  static const en = 'en';
}

class PreferenceKey {
  PreferenceKey._();

  static const theme = 'my_theme';
  static const language = 'app_language';
  static const refreshToken = 'refresh_token';
  static const accessToken = 'access_token';
  static const tempToken = 'temp_token';
  static const expiresIn = 'expires_in';
  static const refreshTokenExpiresIn = 'refresh_token_expires_in';
  static const fcmToken = 'fcm_token';
  static const rooms = 'rooms';
  static const isFirstLaunch = 'is_first_launch';
  static const country = 'app_country';
  static const countdownOTP = 'countdown_otp';
  static const userId = 'user_id';
  static const hasConfigAmplify = 'has_config_amplify';
  static const appVersionRemote = 'app_version_remote';
  static const badge = 'badge';
  static const expiredOnBackground = 'expired_on_background';
}

class Regex {
  Regex._();

  static const replaceArg = r'{}';
  static const email = r'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$';
  static const password = r'^[A-Za-z\d#`~!@#$%^&*()\-_=+[\]{}\\;:‘’“”"'
      '\''
      ',.<>/?\ ]{6,32}\$';
  static const containsAlphabetAndNumber = r'^(?=.*?[a-z])(?=.*?\d)';
  static const phone = r'(0)(\s|\.)?(\d{2})(\d)(\s|\.)?(\d{3})(\s|\.)?(\d{3})';
  static const fullName = r'^[a-zA-Z]{1,}(?: [a-zA-Z]+){0,}$';
  static const birthDay =
      r'^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d$';
  static const androidAcceptPickExtension =
      r'(jpeg|JPEG|jpg|JPG|tif|TIF|png|PNG|tiff|TIFF)$';
  static const iosAcceptPickExtension =
      r'(jpeg|JPEG|jpg|JPG|tif|TIF|png|PNG|tiff|TIFF|heic|HEIC|heif|HEIF)$';
  static const specialExtension = r'(heic|HEIC|heif|HEIF)$';

  static String imageExtension =
      r'(jpeg|JPEG|jpg|JPG|tif|TIF|png|PNG|tiff|TIFF|heic|HEIC|heif|HEIF)$';
}

class Symbol {
  static const vi = 'đ';
}
