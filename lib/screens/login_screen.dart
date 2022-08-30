import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_flutter/utils/colors.dart';

import '../Widgets/text_field_input.dart';

class LOGINScreen extends StatefulWidget {
  const LOGINScreen({Key? key}) : super(key: key);

  @override
  State<LOGINScreen> createState() => _LOGINScreenState();
}

class _LOGINScreenState extends State<LOGINScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Flexible(flex: 2, child: Container()),
            SvgPicture.asset(
              'assets/ic_instagram.svg',
              color: primaryColor,
              height: 64,
            ),
            const SizedBox(height: 30),
            TextFieldInput(
                textEditingController: _emailController,
                hintText: 'ENTER YOUR EMAIl',
                textInputType: TextInputType.emailAddress),
            const SizedBox(height: 30),
            TextFieldInput(
              textEditingController: _passwordController,
              hintText: 'ENTER YOUR Password',
              textInputType: TextInputType.text,
              isPass: true,
            ),
            const SizedBox(height: 30),
            InkWell(
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    color: blueColor),
                child: const Text('LOG IN'),
              ),
            ),
            const SizedBox(height: 15),
            Flexible(flex: 2, child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Text("Dont you have an account"),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
