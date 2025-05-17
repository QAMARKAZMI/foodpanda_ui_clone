import 'package:flutter/material.dart';
import 'package:foodpanda_ui_clone/screens/home_screen.dart';
import 'package:foodpanda_ui_clone/widgets/custom_text+button.dart';
import 'package:foodpanda_ui_clone/widgets/custom_text_field.dart';

class FillAccountInfoScreen extends StatefulWidget {
  const FillAccountInfoScreen({super.key});

  @override
  State<FillAccountInfoScreen> createState() => _FillAccountInfoScreenState();
}

class _FillAccountInfoScreenState extends State<FillAccountInfoScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String passText = '';
  String firstNameText = '';
  String lastNameText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFFFF2B85),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Continue",
              style: TextStyle(
                color:
                    firstNameText.isEmpty ||
                            lastNameText.isEmpty ||
                            passText.isEmpty
                        ? Colors.grey[400]
                        : Color(0xFFFF2B85),
              ),
            ),
          ),
        ],
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
                      child: Image.asset("assets/profile_icon.png", width: 60),
                    ),
                    Text(
                      "Let's get started",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "First, let's create your foodPanda account with your email",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 15,
                          padding: EdgeInsets.only(right: 7),
                          child: CustomTextField(
                            controller: firstNameController,
                            labelText: "First Name",
                            onChanged: (Value) {
                              setState(() {
                                firstNameText = Value;
                              });
                            },
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 15,
                          padding: EdgeInsets.only(right: 7),
                          child: CustomTextField(
                            controller: lastNameController,
                            labelText: "Last Name",
                            onChanged: (Value) {
                              setState(() {
                                lastNameText = Value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                
                    SizedBox(height: 20),
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
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Divider(height: 40, color: Colors.grey[200]),
                CustomTextButton(
                  text: "Continue",
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c)=> HomeScreen()));
                  },
                  isDisabled:
                      firstNameText.isEmpty ||
                      lastNameText.isEmpty ||
                      passText.isEmpty,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
