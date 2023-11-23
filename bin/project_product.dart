import 'dart:convert';
import 'models/data_product.dart';
import 'service/network_service.dart';

void main() async {

  print("\x1B[1m\x1B[32mWelcome to Dart\x1B[0m\x1B[0m");

  String response = await NetworkService.getData(NetworkService.apiProduct);

  List<dynamic> dataList = jsonDecode(response);

  for (int i = 0; i < dataList.length; i++) {
    print("\n\x1B[1m\x1B[34mProduct ${i + 1}\x1B[0m\x1B[0m\n");
    String data = jsonEncode(dataList[i]);
    print(productFromData(data));
  }

}