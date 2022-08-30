import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SnackBar',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: const Text('Chào Các Bạn'),
                onPressed: () {
                  Get.snackbar(
                    "SnackBar Title", "Xin chao moi nguoi",
                    snackPosition:
                        SnackPosition.BOTTOM, //Nơi hiển thị thông báo
                    // titleText: const Text('Another Title'), //Set lại TITLE
                    // messageText: const Text(
                    //   "Another Mesenger",
                    //   style: TextStyle(color: Colors.white),
                    // ), //Set lại MESSENGER
                    colorText: Colors.red, //Màu chữ
                    backgroundColor: Colors.black, //Màu Background
                    borderRadius: 20,
                    margin: const EdgeInsets.all(10), //Nâng thông báo
                    //maxWidth: 100, //set chiều dài thông báo
                    animationDuration: const Duration(
                      milliseconds: 3000,
                    ), //set thời gian hiện thông báo
                    // backgroundGradient: const LinearGradient(
                    //   colors: [
                    //     Colors.red,
                    //     Colors.green,
                    //   ],
                    // ), //trải màu
                    borderColor: Colors.pinkAccent,
                    borderWidth: 4, // Tạo viền màu
                    boxShadows: [
                      const BoxShadow(
                        color: Colors.blue,
                        offset: Offset(30, 50),
                        spreadRadius: 20,
                        blurRadius: 8,
                      ),
                    ],
                    isDismissible: true,
                    forwardAnimationCurve: Curves.bounceInOut, //hiệu ứng
                    duration: const Duration(milliseconds: 8000),
                    icon: const Icon(
                      Icons.send,
                      color: Colors.red,
                    ),
                    shouldIconPulse: false, //tắt hiệu ứng icon
                    leftBarIndicatorColor: Colors.white,
                    mainButton: TextButton(
                      child: const Text('"text"'),
                      onPressed: () {
                        print("click");
                      },
                    ),
                    //
                    onTap: (val) {
                      print("click");
                    },
                    overlayBlur: 5, //làm mờ màn hình khi xuất hiện thông báo
                    //overlayColor: Colors.green
                    padding: const EdgeInsets.all(50),
                    showProgressIndicator: true, //loading
                    progressIndicatorBackgroundColor: Colors.deepOrange,
                    progressIndicatorValueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.white),
                    reverseAnimationCurve: Curves.bounceInOut,
                    snackbarStatus: (val) {
                      print(val);
                    },
                    userInputForm: (Form(
                      child: Row(
                        children: const [
                          Expanded(
                            child: TextField(),
                          ),
                        ],
                      ),
                    )), //chức năng nhắn tin
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
