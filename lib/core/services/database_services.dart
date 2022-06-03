

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:week_3_task_2_antonx/core/models/cart.dart';
import 'package:week_3_task_2_antonx/core/models/plant.dart';

class DatabaseService {

  final _firebaseFirestore = FirebaseFirestore.instance; // cloud firebase
  final _auth = FirebaseAuth.instance;

  Future<List<Plant>> getPlantDataDb() async {

    List<Plant> databasePlantList = [];
    try {
      QuerySnapshot snapshot = await _firebaseFirestore.collection('plant').get();

      if (snapshot.docs.isEmpty) {
        debugPrint("No data found in plant");
        //return [];
      } else {
        snapshot.docs.forEach((element) {
          databasePlantList.add(Plant.fromJson(element.data(), element.id));
        });
        debugPrint('databasePlantList length => ${databasePlantList.length}');
      }
      return databasePlantList;
    } catch (e) {
      debugPrint('Error getting Plant data from Firestore ${e.toString()}');
      return [];
    }
  }

  //Add Cart To Firestore
   addPlantToDb(CartModel cartModel) async {

    try {
      // cartModel.name = cartModel.name;
      // cartModel.imageUrl = cartModel.imageUrl;
      User? user = _auth.currentUser;
      _firebaseFirestore.collection('carts').doc(user?.uid).set(cartModel.toJson());
      Fluttertoast.showToast(msg: "Cart Uploaded successfully :) ");
     // myQuery.collection('UserSelectedCart').doc(user?.uid).set(cartModel.toJson());
      debugPrint('Cart Uploaded successfully');
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());

    }
  }

  // Get cart from FireStore
  Future<List<CartModel>> getCartDataDb() async{
    List<CartModel> dataBaseCartList = [];
    try{
      QuerySnapshot snapshot = await _firebaseFirestore.collection('carts').get();
      if(snapshot.docs.isEmpty){
        debugPrint("No data found in Cart");
      }else{
        snapshot.docs.forEach((element) {
          dataBaseCartList.add(CartModel.fromJson(element.data(), element.id));
        });
        debugPrint("DatabaseCartList length ${dataBaseCartList.length}");
      }
      return dataBaseCartList;
    }catch(e){
      debugPrint('Error getting Cart data from Firestore ${e.toString()}');
      return [];
    }

  }

}

