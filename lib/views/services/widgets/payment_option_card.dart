import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pabili_customer/constants/constant_colors.dart';

class PaymentOptionCard extends StatefulWidget {
  const PaymentOptionCard({super.key});

  @override
  State<PaymentOptionCard> createState() => _PaymentOptionCardState();
}

class _PaymentOptionCardState extends State<PaymentOptionCard> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> paymentMethods = [
    {'label': "CASH (COD)", 'icon': Icons.payments_outlined},
    {'label': "GCASH", 'icon': Icons.account_balance_wallet_outlined},
    {'label': "Bank", 'icon': Icons.account_balance_outlined},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        spacing: 8,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Select Payment Option",
                style: GoogleFonts.jetBrainsMono(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: primary,
                ),
              ),
              Text(
                "Exact Fare Preferred",
                style: GoogleFonts.jetBrainsMono(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: primary,
                ),
              ),
            ],
          ),
          Row(
            spacing: 8,
            children: List.generate(paymentMethods.length, (index) {
              final isSelected = selectedIndex == index;
              return Expanded(
                child: GestureDetector(
                  onTap: () => setState(() {
                    selectedIndex = index;
                  }),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: isSelected ? primaryContainer : surfaceLow,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Icon(
                          paymentMethods[index]['icon'],
                          size: 20,
                          color: isSelected ? primary : Colors.black,
                        ),
                        Text(
                          paymentMethods[index]['label'],
                          style: GoogleFonts.jetBrainsMono(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: isSelected ? primary : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
            // [
            //   Expanded(
            //     child: Container(
            //       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            //       decoration: BoxDecoration(
            //         color: surfaceLow,
            //         borderRadius: BorderRadius.circular(8),
            //       ),
            //       child: Column(
            //         children: [
            //           Icon(Icons.payments_outlined, size: 20),
            //           Text(
            //             "CASH (COD)",
            //             style: GoogleFonts.jetBrainsMono(
            //               fontSize: 12,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            //   Expanded(
            //     child: Container(
            //       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            //       decoration: BoxDecoration(
            //         color: surfaceLow,
            //         borderRadius: BorderRadius.circular(8),
            //       ),
            //       child: Column(
            //         children: [
            //           Icon(Icons.account_balance_wallet_outlined, size: 20),
            //           Text(
            //             "GCASH",
            //             style: GoogleFonts.jetBrainsMono(
            //               fontSize: 12,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            //   Expanded(
            //     child: Container(
            //       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            //       decoration: BoxDecoration(
            //         color: surfaceLow,
            //         borderRadius: BorderRadius.circular(8),
            //       ),
            //       child: Column(
            //         children: [
            //           Icon(Icons.account_balance_outlined, size: 20),
            //           Text(
            //             "Bank",
            //             style: GoogleFonts.jetBrainsMono(
            //               fontSize: 12,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ],
          ),
        ],
      ),
    );
  }
}
