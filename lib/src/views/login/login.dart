// ignore_for_file: use_build_context_synchronously

import 'package:big_test/src/controllers/login/login_controller.dart';
import 'package:big_test/src/models/login/login_model.dart';
import 'package:big_test/src/utils/shared_pref_util.dart';
import 'package:big_test/src/views/home/homepage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final driverCode = TextEditingController();
  final password = TextEditingController();

  void actionLogin() async {
    LoginModel login =
        await LoginController.login(driverCode.text, password.text);

    SharedPrefUtil.setToken(login.token);

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Homepage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Masuk'), centerTitle: true,),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Kode Driver'),
            TextFormField(
              controller: driverCode,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Password'),
            TextFormField(
              controller: password,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () => actionLogin(), child: const Text('Masuk'))
          ]),
        ),
      ),
    );
  }
}
