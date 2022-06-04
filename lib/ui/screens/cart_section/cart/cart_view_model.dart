
import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/services/database_services.dart';

import '../../../../core/models/cart.dart';

class CartViewModel extends ChangeNotifier{

  // CartViewModel(){
  //   getCartList();
  // }

  bool isLoading = false;
  CartModel cartModel = CartModel();
  final _databaseService = DatabaseService();

  getCart({cartId,imageUrl,info,name,quantity}) async {

    cartModel.cartId=cartId;
    cartModel.name=name;
    cartModel.imageUrl=imageUrl;
    cartModel.quantity=quantity;
    cartModel.info=info;
     await _databaseService.addPlantToDb(cartModel);
     notifyListeners();
  }

  List<CartModel> cartModelList =[];
  //List<CartModel> get getCartModelList => cartModelList;

  getCartList() async{
    isLoading = true;
    notifyListeners();
    cartModelList = await _databaseService.getCartDataFromDb();
    debugPrint('cartModelList Length Cart View Model => ${cartModelList.length}');
    notifyListeners();
  }

  // remove(int? removeItem){
  //   cartModelList.removeAt(removeItem!);
  //   notifyListeners();
  // }
  deleteCar(String cartId, int index) async {
    await _databaseService.deleteCartFromDb(cartId);
    notifyListeners();
    cartModelList.removeAt(index);
    notifyListeners();
  }
  int total=0;
  increment(CartModel? cart){
    cart!.quantity=cart.quantity!+1;
    total=total+1;
    notifyListeners();
    return total;
  }
  incrementQuantity(cartId) async {
    notifyListeners();
    await _databaseService.increment(cartId);
    notifyListeners();
    await _databaseService.getCartDataFromDb();
    cartId!.quantity=cartId.quantity!+1;
    total=total+1;
    notifyListeners();
    return total;
  }
  decrement(CartModel? cart){
    if(cart!.quantity!>0){
      cart.quantity = cart.quantity!-1;
    }
    if(total>0){
      total=total-1;
    }
    notifyListeners();
    return total;
  }


}