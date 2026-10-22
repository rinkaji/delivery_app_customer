import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pabili_customer/constants/app_text_sizes.dart';
import 'package:pabili_customer/constants/constant_colors.dart';
import 'package:pabili_customer/views/auth/controllers/auth_controller.dart';
import 'package:pabili_customer/views/home/services_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final authController = Get.find<AuthController>();

  bool is_visible = false;
  bool remember_me = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 24,
            color: Colors.black.withValues(alpha: .06),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        spacing: 16,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 6,
            children: [
              Text(
                "Phone Number",
                style: GoogleFonts.jetBrainsMono(
                  fontSize: AppTextSizes.s,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 14,
                  // top: 12,
                  // bottom: 12,
                  // right: 14,
                ),
                decoration: BoxDecoration(
                  color: surfaceLow,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Row(
                      spacing: 6,
                      children: [
                        Text(
                          "+63",
                          style: GoogleFonts.jetBrainsMono(
                            fontSize: AppTextSizes.s,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(10)],
                        style: GoogleFonts.jetBrainsMono(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 6,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Password",
                    style: GoogleFonts.jetBrainsMono(
                      fontSize: AppTextSizes.s,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: surfaceLow,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  obscureText: !is_visible,
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    // prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      onPressed: () {
                        is_visible = !is_visible;
                        setState(() {});
                      },
                      icon: is_visible
                          ? Icon(Icons.visibility_outlined)
                          : Icon(Icons.visibility_off_outlined),
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          remember_me = !remember_me;
                          setState(() {});
                        },
                        icon: remember_me
                            ? Icon(Icons.check_box_outlined)
                            : Icon(Icons.check_box_outline_blank),
                      ),
                      Text("Remember Me"),
                    ],
                  ),
                  TextButton(onPressed: () {}, child: Text("Forgot Password?")),
                ],
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Get.off(() => ServicesPage());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryContainer,
              ),
              child: Text(
                "Log in",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: AppTextSizes.l,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account? "),
              TextButton(
                onPressed: () {
                  authController.toggleWidget();
                },
                child: Text("Sign Up"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
