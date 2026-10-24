import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pabili_customer/constants/app_text_sizes.dart';
import 'package:pabili_customer/constants/constant_colors.dart';
import 'package:pabili_customer/views/home/widgets/payment_method.dart';
import 'package:pabili_customer/views/home/widgets/rider_details_card.dart';
import 'package:pabili_customer/views/services/ride_page.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16.0,
                  top: 12,
                  bottom: 8,
                ),
                child: Text(
                  "What do you need delivered?",
                  style: GoogleFonts.plusJakartaSans(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 8.0,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Available Services",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: AppTextSizes.l,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Binalonan Town Proper",
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: AppTextSizes.xs,
                        fontWeight: FontWeight.bold,
                        color: primary,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  spacing: 10,
                  children: [
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusGeometry.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 12,
                            children: [
                              Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: tertiaryVariant,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.restaurant_rounded,
                                  color: Colors.red.shade700,
                                ),
                              ),
                              Text(
                                "Food Delivery",
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Book Order",
                            style: GoogleFonts.jetBrainsMono(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusGeometry.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 12,
                            children: [
                              Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: tertiaryVariant2,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.shopping_cart_outlined,
                                  color: onSurfaceVariant,
                                ),
                              ),
                              Text(
                                "Purchase / Pabili",
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "List Items",
                            style: GoogleFonts.jetBrainsMono(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusGeometry.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 12,
                            children: [
                              Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: inverseSurfaceVariant,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.inventory_2_outlined,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Package Delivery",
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Send Parcel",
                            style: GoogleFonts.jetBrainsMono(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusGeometry.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 12,
                            children: [
                              Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: inverseSurfaceVariant,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.receipt_long_outlined,
                                  color: primary,
                                ),
                              ),
                              Text(
                                "Bills Payment",
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Pay Bill",
                            style: GoogleFonts.jetBrainsMono(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => RidePage());
                      },
                      child: Container(
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusGeometry.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 12,
                              children: [
                                Container(
                                  width: 44,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: tertiaryVariant2,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Icon(
                                    Icons.motorcycle_outlined,
                                    color: primary,
                                  ),
                                ),
                                Text(
                                  "Ride / Hatid",
                                  style: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Book Ride",
                              style: GoogleFonts.jetBrainsMono(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusGeometry.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 12,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: tertiaryVariant,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: FaIcon(
                                  FontAwesomeIcons.gift,
                                  color: Colors.red.shade700,
                                  size: 22,
                                ),
                              ),
                              Text(
                                "Surprise Delivery",
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Plan Gift",
                            style: GoogleFonts.jetBrainsMono(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              PaymentMethod(),
              RiderDetailsCard(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color(0xFFF9F9FF),
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.motorcycle),
            label: "Services",
          ),
          NavigationDestination(
            icon: Icon(Icons.receipt_long_outlined),
            label: "Orders",
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
