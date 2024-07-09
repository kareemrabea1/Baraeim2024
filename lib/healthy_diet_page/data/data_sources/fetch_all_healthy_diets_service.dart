import 'package:dio/dio.dart';

import '../../../strings.dart';

class FetchAllHealthyDiets {
  Dio dio = Dio();

  Future<List<Map<String, dynamic>>> getHealthyDietData() async {
    try{ Response response = await dio.get(
      'path',
      options: Options(
        headers: {
          'auth': apiToken,
        },
      ),
    );

    return response.data;
    }catch(e){
      print(e);
      return [];
    }

  }}
