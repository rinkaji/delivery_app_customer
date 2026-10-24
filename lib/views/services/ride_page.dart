import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pabili_customer/constants/app_text_sizes.dart';
import 'package:pabili_customer/constants/constant_colors.dart';
import 'package:pabili_customer/views/services/widgets/payment_option_card.dart';

class RidePage extends StatelessWidget {
  const RidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: .02),
                offset: Offset(0, 1),
                blurRadius: 8,
                spreadRadius: 0,
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Color(0xFFF9F9FF),
            title: Text(
              "Ride/Hatid Service",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                spacing: 8,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 12,
                        children: [
                          Icon(
                            Icons.my_location_outlined,
                            size: 20,
                            color: primary,
                          ),
                          Text(
                            "Pickup Location",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: AppTextSizes.l,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          overlayColor: WidgetStateProperty.all(
                            Colors.transparent,
                          ),
                        ),
                        child: Text("Clear"),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: surfaceLow,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Poblacion Plaza, Binalonan",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: AppTextSizes.m,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.map_outlined),
                          highlightColor: Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                spacing: 8,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 12,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: primary,
                          ),
                          Text(
                            "Drop-off Location",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: AppTextSizes.l,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          overlayColor: WidgetStateProperty.all(
                            Colors.transparent,
                          ),
                        ),
                        child: Text("Clear"),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: surfaceLow,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Poblacion Plaza, Binalonan",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: AppTextSizes.m,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.map_outlined),
                          highlightColor: Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Additional Instruction (Optional)",
                        style: GoogleFonts.jetBrainsMono(
                          fontWeight: FontWeight(600),
                          fontSize: AppTextSizes.s,
                        ),
                      ),
                      TextField(
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: surfaceLow,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),

                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            PaymentOptionCard(),
          ],
        ),
      ),
    );
  }
}
