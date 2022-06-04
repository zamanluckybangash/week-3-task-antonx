

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:week_3_task_2_antonx/core/models/cart.dart';
import 'package:week_3_task_2_antonx/core/models/plant.dart';

class DatabaseService {

  final _firebaseFirestore = FirebaseFirestore.instance; // cloud firebase
  final _auth = FirebaseAuth.instance;
  String getUserId() {
    final User? user = _auth.currentUser;
    final uid = user!.uid;
    return uid;
  }

  //Get Plant from as a list Firestore
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
      //final User? user = _auth.currentUser;
      String _userUid = getUserId();
      //final uuid = user!.uid;
     //  final myQuery=_firebaseFirestore.collection('carts').doc(user?.uid).set(cartModel.toJson());
     // myQuery.collection('UserSelectedCart').doc(user?.uid).set(cartModel.toJson());
      _firebaseFirestore.collection('carts').doc(_userUid).collection('UserSelectedCart').doc(cartModel.cartId)
          .set(cartModel.toJson());
      Fluttertoast.showToast(msg: "Cart Uploaded successfully :) ");
      debugPrint('Cart Uploaded successfully');
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());

    }
  }

  // Get cart from FireStore
  Future<List<CartModel>> getCartDataFromDb() async{
    List<CartModel> dataBaseCartList = [];
    String _userUid = getUserId();
    try{
      QuerySnapshot snapshot = await _firebaseFirestore.collection('carts').doc(_userUid)
          .collection('UserSelectedCart').get();
      if(snapshot.docs.isEmpty){
        debugPrint("No data found in Cart");
      }else{
        for (var element in snapshot.docs) {
          dataBaseCartList.add(CartModel.fromJson(element.data(), element.id));
        }
           //else{
        //         snapshot.docs.forEach((element) {
        //           dataBaseCartList.add(CartModel.fromJson(element.data(), element.id));
        //         }
        //         );
        //         debugPrint("DatabaseCartList length ${dataBaseCartList.length}");
        //       }

        debugPrint("DatabaseCartList length ${dataBaseCartList.length}");
      }
      return dataBaseCartList;
    }catch(e){
      debugPrint('Error getting Cart data from Firestore ${e.toString()}');
      return [];
    }
  }
  //Delete Cart from Db
  Future<void> deleteCartFromDb(String cartId) async {
    String _userUid = getUserId();
    try {
      _firebaseFirestore.collection('carts').doc(_userUid).collection('UserSelectedCart').doc(cartId).delete();
      Fluttertoast.showToast(msg: "Cart Deleted successfully from DB :) ");
      debugPrint('Cart deleted from firestore ');
    } catch (e) {
      debugPrint(e.toString());
    }
  }
  // for FieldValue
  /// Sentinel values that can be used when writing document fields with set() or
  /// update().
  // for increment which is buidin function
  /// Returns a special value for use with set() or update() that tells the
  /// server to increment the field’s current value by the given value.
  Future<void> increment(cartId) async {
    String _userUid = getUserId();
    await _firebaseFirestore.collection('carts').doc(_userUid).collection('UserSelectedCart')
        .doc(cartId).update({'quantity': FieldValue.increment(3)});
  }

}

