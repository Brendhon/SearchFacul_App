import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:search_facul/core/app_colors.dart';
import 'package:search_facul/core/app_gradients.dart';
import 'package:search_facul/core/app_images.dart';
import 'package:search_facul/core/app_text_styles.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(150),
          child: Container(
            padding: EdgeInsets.only(top: 40, left: 15, right: 15),
            decoration: BoxDecoration(
                gradient: AppGradients.linear,
                border: Border(bottom: BorderSide(color: AppColors.border))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(
                    text: 'Olá, ',
                    style: AppTextStyles.title,
                    children: [
                      TextSpan(
                          text: 'estudante!', style: AppTextStyles.titleBold)
                    ])),
                Container(
                  width: 90,
                  child: SvgPicture.asset(AppImages.books),
                )
              ],
            ),
          ),
        );
}
