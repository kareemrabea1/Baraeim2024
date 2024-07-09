import 'package:dio/dio.dart';
import '../../../strings.dart';

class FetchAllMedicine {
  Dio dio = Dio();

  Future<List<Map<String, dynamic>>> getAllMedicineData() async {
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
