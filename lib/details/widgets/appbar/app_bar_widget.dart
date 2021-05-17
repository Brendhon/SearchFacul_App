import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_facul/core/core.dart';
import 'package:search_facul/result/result_page.dart';
import 'package:search_facul/shared/models/course_model.dart';

class AppBarWidget extends PreferredSize {
  // Atributo
  CourseModel course;

  // Construtor
  AppBarWidget({required this.course})
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
                        course.ies,
                        style: AppTextStyles.headingWhite40,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        course.name,
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
