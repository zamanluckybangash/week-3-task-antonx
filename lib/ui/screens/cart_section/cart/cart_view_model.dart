
import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/services/database_services.dart';

import '../../../../core/models/cart.dart';

class CartViewModel extends ChangeNotifier{

  CartViewModel(){
    getCartList();
  }
  bool isLoading = false;
  CartModel cartModel = CartModel();
  final _databaseService = DatabaseService();

  getCart({cartId,imageUrl,info,name,quantity}) async {

    cartModel.cartId=cartId;
    cartModel.name=name;
    cartModel.imageUrl=imageUrl;
    cartModel.quantity=quantity;
    cartModel.info=info;
    cartModel = await _databaseService.addPlantToDb(cartModel);
  }

  List<CartModel> _cartModelList =[];
  List<CartModel> get getCartModelList => _cartModelList;
  getCartList() async{
    isLoading = true;
    notifyListeners();
    _cartModelList = await _databaseService.getCartDataDb();
    debugPrint('_cartModelList Length Cart View Model => ${_cartModelList.length}');
    notifyListeners();
  }
}