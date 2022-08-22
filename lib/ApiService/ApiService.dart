import 'dart:developer';


import 'package:create_pdf/Api/Api.dart';
import 'package:create_pdf/Modal/userModal.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<userModal>?> getTotalCustomerStatus() async {
    try {
      var url = Uri.parse(Api.customerStatusTotal);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<userModal> _model = csTotalModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
