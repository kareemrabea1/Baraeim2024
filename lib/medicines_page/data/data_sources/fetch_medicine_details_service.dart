import 'package:dio/dio.dart';

import '../../../strings.dart';

class FetchMedicineDetails {
  Dio dio = Dio();

  Future<Map<String, dynamic>> getMedicineData({required int id}) async {
    try {
      Response response = await dio.get(
        'path',
        queryParameters: {
          'id': id,
        },
        options: Options(
          headers: {
            'auth': apiToken,
          },
        ),
      );

      return response.data;
    } catch (e) {
      print(e);
      return {};
    }
  }
}
