// import 'package:hive/hive.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// class HiveLocal {
//   static Box? localCart;
//   static Box? localWishList;

//   static init() async {
//     await Hive.initFlutter();
//     localCart = await Hive.openBox('services');
//   }
// }
import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';



class DataManager {
  late BoxCollection collection;
  late Box userData;
  late Box count;

  static const USER = "USER";

  Future initHive() async {
    await Hive.initFlutter();
    userData = await Hive.openBox('dataUser');
    count = await Hive.openBox('count');

    // final directory = await getApplicationDocumentsDirectory();
    // collection = await BoxCollection.open(
    //   'dataManager', // Name of your database
    //   {'data'}, // Names of your boxes
    //   path: directory
    //       .path, // Path where to store your boxes (Only used in Flutter / Dart IO)
    // );
  }

  Future<void> saveData(String key, dynamic value) async {
    final box = await Hive.openBox('data');
    await box.put(key, value);
    box.close();
  }

  saveUser(Map<String, dynamic> value) async {
    // await Hive.initFlutter();
    // final userData = await Hive.openBox('dataUser');
    await userData.put(USER, value);
    // userData.close();
  }

  getData(String key) async {
    // await Hive.initFlutter();
    final box = await Hive.openBox('data');

    return box.get(key);
  }

  // getUserData() async {
  //   // final userData = await Hive.openBox('dataUser');
  //
  //   try {
  //     final user = (Map<String, dynamic>.from(userData.get(USER)));
  //
  //     Utils.token = user['access_token'];
  //     log(Utils.token);
  //
  //     Utils.userModel = UserModel.fromJson(Map<String, dynamic>.from(user));
  //
  //     return userData.get(USER);
  //   } catch (e) {
  //     log(e.toString());
  //     //  userData.clear();
  //   }
  // }

  // deleteUserData() async {
  //   // final userData = await Hive.openBox('dataUser');
  //   Utils.token = '';
  //   Utils.userModel = UserModel();
  //   await userData.delete(USER);
  // }

  deleteAllData() async {
    final userData = await Hive.openBox('data');

    return userData.delete(USER);
  }

  addToCount(int id ) async {
    int num = await count.get(id.toString()) ?? 0;
    await count.put(id.toString(), num + 1);
  } getAllCount( ) async {
    List Keys = [];
    for(var element in count.keys)
    {
      Keys.add(element);
    }
    return Keys;

  }

  getCount(int id) async {
    return await count.get(id.toString()) ?? 0;
  }  deleteCount(int id) async {
    return await count.clear();
  }

  resetCount(int id) async {
    await count.delete(id.toString());
  }
}
