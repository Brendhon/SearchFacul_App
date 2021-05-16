import 'package:flutter/material.dart';
import 'package:search_facul/core/app_colors.dart';
import 'package:search_facul/core/app_text_styles.dart';
import 'package:search_facul/result/widgets/appbar/app_bar_widget.dart';
import 'package:search_facul/result/widgets/card/card_widget.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SizedBox.expand(
        child: Container(
          padding: EdgeInsets.only(top: 5),
          color: AppColors.blue,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text.rich(TextSpan(
                          text: 'Total de cursos encontrados: ',
                          style: AppTextStyles.body,
                          children: [
                            TextSpan(text: '6', style: AppTextStyles.bodyBold)
                          ])),
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    crossAxisCount: 2,
                    childAspectRatio: 0.85,
                    children: [
                      CardWidget(),
                      CardWidget(), 
                      CardWidget(),
                      CardWidget(),
                      CardWidget(),
                      CardWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
