import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran/screens/home_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 68),
          child: Column(
            children: [
              _buildQuranSection(context),
              SizedBox(height: 64),
              _buildEmailSection(context),
              SizedBox(height: 18),
              _buildPasswordSection(context),
              SizedBox(height: 18),
              _buildContinueSection(context),
              SizedBox(height: 4)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildQuranSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 26),
      padding: EdgeInsets.only(left: 52),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 32),
            child: Image.asset(
              "assets/images/img_quran_low_resol.png",
              height: 46,
              width: 138,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Exploring Truth and Serenity with the Quran",
            style: TextStyle(
              color: Color(0XFF414141),
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your email address",
            style: TextStyle(
              color: Color(0XFF414141),
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 6),
          Container(
            width: 336,
            child: TextFormField(
              focusNode: FocusNode(),
              autofocus: true,
              controller: emailController,
              style: TextStyle(
                color: Color(0XFF414141),
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                hintText: "astiyanur@gmail.com",
                hintStyle: TextStyle(
                  color: Color(0XFF414141),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  borderSide: BorderSide(
                    color: Color(0XFFECECEC),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  borderSide: BorderSide(
                    color: Color(0XFFECECEC),
                    width: 1,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  borderSide: BorderSide(
                    color: Color(0XFFECECEC),
                    width: 1,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  borderSide: BorderSide(
                    color: Color(0XFFECECEC),
                    width: 1,
                  ),
                ),
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Choose a password",
            style: TextStyle(
              color: Color(0XFF414141),
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4),
          Container(
            width: 336,
            child: TextFormField(
              focusNode: FocusNode(),
              autofocus: true,
              controller: passwordController,
              style: TextStyle(
                color: Color(0XFF414141),
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
              textInputAction: TextInputAction.done,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "min. 8 characters",
                hintStyle: TextStyle(
                  color: Color(0XFF414141),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  borderSide: BorderSide(
                    color: Color(0XFFECECEC),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  borderSide: BorderSide(
                    color: Color(0XFFECECEC),
                    width: 1,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  borderSide: BorderSide(
                    color: Color(0XFFECECEC),
                    width: 1,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  borderSide: BorderSide(
                    color: Color(0XFFECECEC),
                    width: 1,
                  ),
                ),
                suffixIcon: Container(
                  margin: EdgeInsets.fromLTRB(30, 14, 14, 6),
                  child: SvgPicture.asset(
                    "assets/images/img_eyeslash.svg",
                    height: 22,
                    width: 22,
                  ),
                ),
                suffixIconConstraints: BoxConstraints(
                  maxHeight: 42,
                ),
                isDense: true,
                contentPadding: EdgeInsets.only(
                  left: 20,
                  top: 12,
                  bottom: 12,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 44,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF332885),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    22,
                  ),
                ),
                visualDensity: const VisualDensity(
                  vertical: -4,
                  horizontal: -4,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 12,
                ),
              ),
              onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text(
                "Continue",
                style: TextStyle(
                  color: Color(0XFFFFFFFF),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: 28),
          Container(
            width: double.maxFinite,
            height: 46,
            margin: EdgeInsets.only(right: 4),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Color(0XFFFFFFFF),
                side: BorderSide(
                  color: Color(0X193E3E3E),
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    22,
                  ),
                ),
                visualDensity: const VisualDensity(
                  vertical: -4,
                  horizontal: -4,
                ),
                padding: EdgeInsets.only(
                  top: 14,
                  right: 30,
                  bottom: 14,
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 22),
                    child: Image.asset(
                      "assets/images/img_image_6.png",
                      height: 16,
                      width: 16,
                    ),
                  ),
                  Text(
                    "Continue with Google",
                    style: TextStyle(
                      color: Color(0XF93E3E3E),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            width: double.maxFinite,
            height: 44,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Color(0XFFFFFFFF),
                side: BorderSide(
                  color: Color(0X193E3E3E),
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    22,
                  ),
                ),
                visualDensity: const VisualDensity(
                  vertical: -4,
                  horizontal: -4,
                ),
                padding: EdgeInsets.only(
                  top: 12,
                  right: 30,
                  bottom: 12,
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: SvgPicture.asset(
                      "assets/images/img_applelogo.svg",
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Text(
                    "Continue with Apple",
                    style: TextStyle(
                      color: Color(0XF93E3E3E),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
