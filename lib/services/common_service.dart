class CommonService {
  static final CommonService _singleton = new CommonService._internal();
  CommonService._internal();
  static CommonService get instance => _singleton;

  String token = '';
  // Map<String, dynamic> userInfo;
}
