import 'package:flutter/material.dart';
import 'package:scan_point_app/widgets/text_field_custom.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 50, right: 16, left: 16),
        color: Colors.white,
        child: const Column(
          children: [
            Text(
              'Đăng nhập',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: TextFieldCustom(
                  label: 'Nhập vào tài khoản',
                  placeholder: 'Tài khoản của bạn'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: TextFieldCustom(
                  label: 'Nhập vào mật khẩu', placeholder: 'Mật khẩu của bạn'),
            ),
          ],
        ),
      ),
    );
  }
}
