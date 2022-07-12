import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_tsel/app/modules/login/controllers/login_controller.dart';
import 'package:my_tsel/app/routes/routes.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              height: 150,
              child: Image.asset(
                'assets/logo/logo_login.png',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Silahkan masuk dengan nomor telkomsel kamu',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text(
              'Nomor HP',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              controller: controller.phoneC,
              keyboardType: TextInputType.phone,
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Cth. 08129011xxxx',
              ),
            ),
            Obx(
              () => CheckboxListTile(
                activeColor: Colors.red,
                value: controller.checkC.value,
                onChanged: (value) => controller.checkC.toggle(),
                controlAffinity: ListTileControlAffinity.leading,
                title: RichText(
                  text: TextSpan(
                    text: 'Saya menyetujui ',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('syarat');
                            },
                          text: "syarat",
                          style: TextStyle(color: Colors.red)),
                      TextSpan(
                          text: ", ", style: TextStyle(color: Colors.black)),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('ketentuan');
                            },
                          text: "ketentuan",
                          style: TextStyle(color: Colors.red)),
                      TextSpan(
                          text: ", dan ",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('privasi');
                            },
                          text: "privasi",
                          style: TextStyle(color: Colors.red)),
                      TextSpan(
                          text: " Telkomsel",
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text(
                "Masuk",
                style: TextStyle(color: Color(0xFF747D8C)),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                fixedSize: Size(150, 50),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text("Atau masuk menggunakan"),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/facebook-logo.png'),
                      SizedBox(width: 7),
                      Text(
                        "Facebook",
                        style:
                            TextStyle(color: Color(0xFF3B5998), fontSize: 16),
                      )
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(150, 50)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFF385998),
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/twitter-logo.png'),
                      SizedBox(width: 7),
                      Text(
                        "Twitter",
                        style:
                            TextStyle(color: Color(0xFF1DA1F2), fontSize: 16),
                      )
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(150, 50)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFF1DA1F2),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
