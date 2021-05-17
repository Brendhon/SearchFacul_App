import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_facul/core/app_colors.dart';
import 'package:search_facul/core/app_text_styles.dart';

class CardWidget extends StatelessWidget {
  // Atributos
  final double borderRadius = 5;
  final double headerHeight = 85;
  final Color borderColor = AppColors.border;
  final Color headerColor = AppColors.darkBlue;
  final Color backColor = AppColors.white;
  final VoidCallback onTap;

  CardWidget({
    Key? key,
    required this.onTap,
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
                      Text('INATEL', style: AppTextStyles.bodybold18),
                      Text('Privado', style: AppTextStyles.bodyWhite),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 2),
                            child: Text(
                              '4',
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
                          'Engenharia da computação',
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
                        'O curso de Engenharia de Computação do Inatel foi criado em 2004 e, desde então, forma profissionais cada vez mais essenciais para o mercado de Tecnologia da Informação e Comunicação.',
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
