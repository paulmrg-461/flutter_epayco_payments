class EpaycoConstants {
  static const String getIpAddressUrl = 'https://api.ipify.org/?format=json';

  static const Map<String, String> headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  static const String methodConfirmation = 'POST';
}
