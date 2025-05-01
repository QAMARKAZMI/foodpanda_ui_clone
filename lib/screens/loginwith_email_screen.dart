import 'package:flutter/material.dart';
import 'package:foodpanda_ui_clone/screens/fill_account_info_screen.dart';
import 'package:foodpanda_ui_clone/screens/verification_email_screen.dart';
import 'package:foodpanda_ui_clone/widgets/custom_text+button.dart';
import 'package:foodpanda_ui_clone/widgets/custom_text_field.dart';

class LoginwithEmailScreen extends StatefulWidget {
  const LoginwithEmailScreen({super.key});

  @override
  State<LoginwithEmailScreen> createState() => _LoginwithEmailScreenState();
}

class _LoginwithEmailScreenState extends State<LoginwithEmailScreen> {
  TextEditingController passController = TextEditingController();
  String passText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFFFF2B85),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 20),
                      child: Image.asset("assets/login_icon.png", width: 60),
                    ),
                    Text(
                      "Login with your email",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "login with your password to dearprogrammer@gmail.com. or get a login link via email",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30),
                    CustomTextField(
                      controller: passController,
                      labelText: "Password",
                      noIcon: false,
                      onChanged: (Value) {
                        setState(() {
                          passText = Value;
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "I forgot my password",
                        style: TextStyle(
                          color: Color(0xFFE21A70),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Divider(height: 40, color: Colors.grey[200]),
                CustomTextButton(
                  text: "Login with password",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FillAccountInfoScreen(),
                      ),
                    );
                  },
                  isDisabled: passText.isEmpty,
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c)=> VerificationEmailScreen()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 58,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFE21A70)),
                    ),
                    child: Center(
                      child: Text(
                        "Send me a login link",
                        style: TextStyle(
                          color: Color(0xFFE21A70),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
 