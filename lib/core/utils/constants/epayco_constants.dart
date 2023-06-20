class EpaycoConstants {
  static const String getIpAddressUrl = 'https://api.ipify.org/?format=json';
  static const String baseUrl = 'http://127.0.0.1:1616';

  static const Map<String, String> headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  static const String urlResponse = '$baseUrl/';
  static const String urlConfirmation = '$baseUrl/subscription-status';
  static const String methodConfirmation = 'POST';
}
