import 'package:flutter/material.dart';
import 'package:scan_point_app/widgets/text_field_custom.dart';
import 'package:scan_point_app/widgets/button_custom.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? forceErrorText;

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Vui lòng nhập mật khẩu !!';
    }
    return null;
  }

  String? userValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Vui lòng nhập tài  !!';
    }

    return null;
  }

  onLogin() {
    final bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
  }

  @override
  void dispose() {
    userController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 50, right: 16, left: 16),
          color: Colors.white,
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Text(
                  'Đăng nhập',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextFieldCustom(
                    label: 'Nhập vào tài khoản',
                    placeholder: 'Tài khoản của bạn',
                    validator: userValidator,
                    controller: userController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextFieldCustom(
                    label: 'Nhập vào mật khẩu',
                    placeholder: 'Mật khẩu của bạn',
                    isPassword: true,
                    validator: passwordValidator,
                    controller: passController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ButtonCustom(
                    label: 'Đăng nhập',
                    onPressed: onLogin,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
