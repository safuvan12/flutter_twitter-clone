class AppwriteConstant {
  static const String databaseId = '63d4ca47d1d5012a8af0';
  static const String projectId = '63d4c45537e8fe4bc1af';
  static const String endPoint = 'http://192.168.1.8:4008/v1';

  static const String userCollection = '63d8c68156bab19e2014';
  static const String tweetsCollection = '63da224c8f7db7db05cd';

  static const String imagesBucket = '63da31c9e231e18c795e';

  static String imageUrl(String imageId) =>
      '$endPoint/storage/buckets/$imagesBucket/files/$imageId/view?project=$projectId&mode=admin';
}
