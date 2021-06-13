class AppConstants {
  // End points
  static final String BASE_URL = "https://demoapi.tradeleaves.com/";
  // "http://tlrogers.westus2.cloudapp.azure.com:9400/";
  static final String ASSET_BASE_URL = "${BASE_URL}tl/public/assest/get/";
  static final String PLACEHOLDER_IMG_URL = "placeholder_url.....";
  static final String TERMS_CONDITIONS_PDF_URL =
      "ee8b4d2b-2064-4c82-984a-855c5899bac0/TradeLeaves_TermsConditions_v1.4.pdf";
  // static final String BASE_URL = "http://qc.tradeleaves.internal:9400/";
  static final String LOB_GLOBAL = '34343e34-7601-40de-878d-01b3bd1f0641';
  static final String LOB_DOMESTIC = '34343e34-7601-40de-878d-01b3bd1f0644';
  static final APP_VERSION_1 = 'v1';
  static final APP_VERSION_2 = 'v2';
  static final orderStatuses = {
    'PAID': ['ODER PLACED', 'PAID', 'ACCEPTED', 'IN TRANSIT', 'DELIVERED'],
    'PAYMENT FAILED': ['ODER PLACED', 'PAYMENT FAILED'],
    'ACCEPTED': ['ODER PLACED', 'PAID', 'ACCEPTED', 'IN TRANSIT', 'DELIVERED'],
    'REJECTED': ['ODER PLACED', 'PAID', 'REJECTED', 'IN TRANSIT', 'DELIVERED'],
    'IN TRANSIT': [
      'ODER PLACED',
      'PAID',
      'ACCEPTED',
      'IN TRANSIT',
      'DELIVERED'
    ],
    'DELIVERED': ['ODER PLACED', 'PAID', 'ACCEPTED', 'IN TRANSIT', 'DELIVERED'],
    'CANCELLED': ['ODER PLACED', 'PAID', 'CANCELLED']
  };

  static final cartMaxAmounts = {
    'US': '10000',
    'IN': '500000',
  };
}
