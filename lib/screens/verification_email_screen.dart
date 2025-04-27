import 'package:flutter/material.dart';
import 'package:foodpanda_ui_clone/widgets/custom_text+button.dart';
import 'package:foodpanda_ui_clone/widgets/custom_text_field.dart';

class VerificationEmailScreen extends StatefulWidget {
  const VerificationEmailScreen({super.key});

  @override
  State<VerificationEmailScreen> createState() =>
      _VerificationEmailScreenState();
}

class _VerificationEmailScreenState extends State<VerificationEmailScreen> {
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only( bottom: 20),
                    child: Image.asset("assets/email_icon.png", width: 80),
                  ),
                  Text(
                    "Verify your email",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "We\'ve sent a verification link to your email address. Please check your inbox and click the link to verify your email. This may help us to keep your account secure.", textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
               
                ],
              ),
            ),
            Column(
              children: [
                Divider(height: 40, color: Colors.grey[200]),
                CustomTextButton(
                  text: "Send verification link again",
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => LoginwithEmailScreen(),
                    //   ),
                    // );
                  },
                  isDisabled: false,
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
