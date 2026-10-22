import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pabili_customer/constants/app_text_sizes.dart';
import 'package:pabili_customer/constants/constant_colors.dart';

class RiderDetailsCard extends StatelessWidget {
  const RiderDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: inverseSurface,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          spacing: 12,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    spacing: 8,
                    children: [
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          color: primaryContainer,
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Icon(Icons.headset_mic_outlined, size: 18),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Direct Rider Hotline",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: surfaceLow,
                              ),
                            ),
                            Text(
                              "Call or text for immediate errand booking",
                              softWrap: true,
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: AppTextSizes.s,
                                color: surfaceLow,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              spacing: 8,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Color(0xFFF9F9FF).withValues(alpha: .1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SMART / TNT",
                              style: GoogleFonts.jetBrainsMono(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: primaryContainer,
                              ),
                            ),
                            Text(
                              "0931 781 9805",
                              style: GoogleFonts.jetBrainsMono(
                                fontSize: 12,
                                fontWeight: FontWeight(600),
                                color: surfaceLow,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.phone_outlined,
                          color: primaryContainer,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Color(0xFFF9F9FF).withValues(alpha: .1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SMART / TNT",
                              style: GoogleFonts.jetBrainsMono(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: primaryContainer,
                              ),
                            ),
                            Text(
                              "0931 781 9805",
                              style: GoogleFonts.jetBrainsMono(
                                fontSize: 12,
                                fontWeight: FontWeight(600),
                                color: surfaceLow,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.phone_outlined,
                          color: primaryContainer,
                          size: 20,
                        ),
                      ],
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
