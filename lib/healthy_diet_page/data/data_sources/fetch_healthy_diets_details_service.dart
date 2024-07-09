import 'package:dio/dio.dart';

import '../../../strings.dart';

class FetchHealthyDietsDetails {
  Dio dio = Dio();

  Future<Map<String, dynamic>> getHealthyDietData({required int id}) async {
    try{ Response response = await dio.post(

      'path',
      queryParameters: {
        'id':id,
      },
      options: Options(

        headers: {
          'auth': apiToken,
        },
      ),
    );

    return response.data;
    }catch(e){
      print(e);
      return {};
    }

  }}
