import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:search_facul/core/core.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(180),
          child: Container(
            padding: EdgeInsets.only(top: 40, left: 15, right: 15),
            decoration: BoxDecoration(
                // gradient: AppGradients.linear,
                color: AppColors.primary,
                border: Border(bottom: BorderSide(color: AppColors.border))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 270,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Inatel',
                        style: AppTextStyles.headingWhite40,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Engenharia da computação',
                        style: AppTextStyles.bodyWhite20,
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
}
