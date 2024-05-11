import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_ecommerce_app/widgets/appcolors.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image.asset('assets/icons/profile.png'),
              ),
              const SizedBox(width: 8,),

              Text(' Hi Raggeh\n What are you Looking for?' , style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor
                )
              ),)
            ],
          ),

          const Spacer(),

          const Icon(Icons.notifications, size: 30, color: AppColors.blueDarkColor,),


        ],
      );
  }
}