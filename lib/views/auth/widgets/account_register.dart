import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:pabili_customer/constants/app_text_sizes.dart';
import 'package:pabili_customer/constants/constant_colors.dart';
import 'package:pabili_customer/views/auth/controllers/auth_controller.dart';

class AccountRegister extends StatefulWidget {
  const AccountRegister({super.key});

  @override
  State<AccountRegister> createState() => _AccountRegisterState();
}

class _AccountRegisterState extends State<AccountRegister> {
  bool is_password_visible = false;
  bool is_confirm_password_visible = false;

  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        spacing: 8,
        children: [
          Row(
            spacing: 8,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 6,
                  children: [
                    Text(
                      "First Name",
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: AppTextSizes.s,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: surfaceLow,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 6,
                  children: [
                    Text(
                      "Last Name",
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: AppTextSizes.s,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: surfaceLow,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
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
                  obscureText: !is_password_visible,
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    // prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      onPressed: () {
                        is_password_visible = !is_password_visible;
                        setState(() {});
                      },
                      icon: is_password_visible
                          ? Icon(Icons.visibility_outlined)
                          : Icon(Icons.visibility_off_outlined),
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
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
                    "Confirm Password",
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
                  obscureText: !is_confirm_password_visible,
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    // prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      onPressed: () {
                        is_confirm_password_visible =
                            !is_confirm_password_visible;
                        setState(() {});
                      },
                      icon: is_confirm_password_visible
                          ? Icon(Icons.visibility_outlined)
                          : Icon(Icons.visibility_off_outlined),
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryContainer,
              ),
              child: Text(
                "Continue",
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
              Text("Already have an account? "),
              TextButton(
                onPressed: () {
                  authController.toggleWidget();
                },
                child: Text("Sign In"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
