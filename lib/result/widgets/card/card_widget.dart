import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_facul/core/app_colors.dart';
import 'package:search_facul/core/app_text_styles.dart';
import 'package:search_facul/shared/models/course_model.dart';

class CardWidget extends StatelessWidget {
  // Atributos
  final double borderRadius = 5;
  final double headerHeight = 85;
  final Color borderColor = AppColors.border;
  final Color headerColor = AppColors.darkBlue;
  final Color backColor = AppColors.white;
  final VoidCallback onTap;
  CourseModel course;

  CardWidget({
    Key? key,
    required this.onTap,
    required this.course,
  }) : super(key: key);

  // Métodos
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: backColor,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: headerHeight,
                decoration: BoxDecoration(
                  color: headerColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, right: 2),
                  child: Column(
                    children: [
                      Text(course.ies, style: AppTextStyles.bodybold18),
                      Text(course.category, style: AppTextStyles.bodyWhite),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 2),
                            child: Text(
                              course.score.toString(),
                              style: AppTextStyles.bodyWhite,
                            ),
                          ),
                          Icon(
                            CupertinoIcons.star_fill,
                            size: 12,
                            color: AppColors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 8, left: 5, right: 5, bottom: 8),
                child: Container(
                  height: 40,
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          course.name,
                          style: AppTextStyles.heading15,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        course.description,
                        style: AppTextStyles.body,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
