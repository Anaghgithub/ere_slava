import 'package:ere_slava/models/models.dart';
import 'package:ere_slava/views/next.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginController extends GetxController {
  var isLoading = false.obs;

  Future<LoginResponse?> login(String emailOrPhone, String password) async {
    isLoading(true);
    const url = 'https://slava.erebs.in/api/v2/login';
    final response = await http.post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: json.encode({"password": password, "mobile_number": emailOrPhone}),
    );
    isLoading(false);


     if (emailOrPhone.isEmpty || password.isEmpty) {
      Get.snackbar(
        'Error',
        'failed to login',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.TOP,
      );
      return null;
    }

    final responseData = json.decode(response.body);
    if (response.statusCode == 200) {
      if (responseData['status_code'] == '01') {
        Get.to(() => Nextpage());
      }
    } else {
      if (responseData['status_code'] == '00') {
        Get.snackbar(
          'Error',
          responseData['message'],
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.TOP,
        );
      }
    }
    
    return null;
  }
}



























    // Debug logging for response status
    // print("Response Status: ${response.statusCode}");

//     if (response.statusCode == 200) {
//       final responseData = json.decode(response.body);

//       print("Response Data: $responseData");

//       if (responseData != null && responseData['status_code'] == "01") {
//         Get.to(() => Nextpage());
//         return LoginResponse.fromJson(responseData); }

//       else {
       
//           print("Login failed: ${responseData['message'] ?? 'invalid user'}");
        
//         Get.snackbar("Error", responseData['message'] ?? "invalid user",
//           backgroundColor: Colors.redAccent,
//           colorText: Colors.white,
//           snackPosition: SnackPosition.TOP);
//       }
//         return null;
//     }
//     else {
//       // Debug logging for non-200 status code
//       print("Failed to Login: ${response.statusCode}");
//       Get.snackbar("Error", "Failed to Login",
//         backgroundColor: Colors.redAccent,
//         colorText: Colors.white,
//         snackPosition: SnackPosition.TOP);
//       return null;
//     }
//   }
// }


