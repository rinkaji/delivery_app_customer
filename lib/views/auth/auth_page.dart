import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pabili_customer/constants/app_text_sizes.dart';
import 'package:pabili_customer/constants/constant_colors.dart';
import 'package:pabili_customer/views/auth/controllers/auth_controller.dart';
import 'package:pabili_customer/views/auth/widgets/account_register.dart';
import 'package:pabili_customer/views/auth/widgets/sign_in.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
      builder: (auth) {
        return Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
                bottom: 24,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 20,
                          color: Colors.black.withValues(alpha: 0.05),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          child: Image.asset("assets/images/logo.png"),
                        ),
                        SizedBox(height: 8),
                        Container(
                          decoration: BoxDecoration(
                            color: surfaceLow,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 2,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.location_pin, color: primary),
                              Text(
                                "BINALONAN HUB",
                                style: GoogleFonts.jetBrainsMono(
                                  fontWeight: FontWeight.bold,
                                  fontSize: AppTextSizes.m,
                                  color: primary,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          auth.isLogin ? "Sign In" : "Sign Up",
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.5,
                            fontSize: AppTextSizes.l,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  auth.isLogin ? SignIn() : AccountRegister(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
