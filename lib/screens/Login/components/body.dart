import 'package:bienvenue_merchant_app_flutter/components/button.dart';
import 'package:bienvenue_merchant_app_flutter/components/navigate.dart';
import 'package:bienvenue_merchant_app_flutter/components/text_field.dart';
import 'package:bienvenue_merchant_app_flutter/components/text_field_container.dart';
import 'package:bienvenue_merchant_app_flutter/screens/CreateAccount/create_account_screen.dart';
import 'package:bienvenue_merchant_app_flutter/screens/ForgetPassword/forget_password_screen.dart';
import 'package:bienvenue_merchant_app_flutter/screens/Home/home_screen.dart';
import 'package:bienvenue_merchant_app_flutter/screens/Login/components/feature_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 50),
          SvgPicture.asset('assets/logos/bienvenue.svg'),
          const SizedBox(height: 40),
          const Text(
            'Login Account',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          const SizedBox(height: 30),
          TextFieldContainer(
              child: MyTextField(
            hintText: 'Email',
            onChange: () {},
          )),
          const SizedBox(height: 15),
          TextFieldContainer(
              child: MyTextField(
            obscureText: true,
            hintText: 'Password',
            onChange: () {},
          )),
          const SizedBox(height: 15),
          TextFieldContainer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => Navigate.to(context, ForgetPasswordScreen.id),
                  child: const Text('Forget your password?'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          TextFieldContainer(
            child: Row(children: [
              Expanded(
                  child: Button(
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () => Navigate.to(context, HomeScreen.id))),
              const SizedBox(width: 10),
              FeatureButton(
                child: SvgPicture.asset('assets/icons/face_unlock.svg'),
              ),
              const SizedBox(width: 10),
              FeatureButton(
                child: SvgPicture.asset('assets/icons/fingerprint.svg'),
              ),
            ]),
          ),
          const SizedBox(height: 25),
          TextFieldContainer(
            child: Row(
              children: const [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'OR',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          TextFieldContainer(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 55,
                    decoration: const BoxDecoration(
                        color: Color(0xFFF3F5F7),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset('assets/logos/google.svg'),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 55,
                    decoration: const BoxDecoration(
                        color: Color(0xFFF3F5F7),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset('assets/logos/facebook.svg'),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 55,
                    decoration: const BoxDecoration(
                        color: Color(0xFFF3F5F7),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset('assets/logos/apple.svg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Not registered Yet?'),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () => Navigate.to(context, CreateAccountScreen.id),
                child: const Text('Create an Account'),
              )
            ],
          )
        ],
      ),
    );
  }
}