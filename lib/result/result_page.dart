import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:search_facul/core/app_colors.dart';
import 'package:search_facul/core/app_text_styles.dart';
import 'package:search_facul/details/details_page.dart';
import 'package:search_facul/result/widgets/appbar/app_bar_widget.dart';
import 'package:search_facul/result/widgets/card/card_widget.dart';
import 'package:search_facul/shared/models/course_model.dart';

// Estrutura basica das requisições
BaseOptions options = new BaseOptions(
  baseUrl: "http://localhost:3333",
  connectTimeout: 5000,
);

class ResultPage extends StatefulWidget {
  final String value;
  final String option;
  List<CourseModel> courses = <CourseModel>[];

  ResultPage({Key? key, required this.value, required this.option})
      : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  void initState() {
    super.initState();
    this.getCourses();
  }

  Future<void> getCourses() async {
    List<CourseModel> auxCourse =
        <CourseModel>[]; // Recebe os valores da requisição

    // Realiza a requisição
    Response response = await Dio(options)
        .get("/course/search/${widget.option}?text=${widget.value}");

    // Pesquisa seja válida
    if (response.statusCode == 200) {
      for (var item in response.data.toList()) // Varrendo o array da resposta
        auxCourse.add(new CourseModel.fromMap(item));
      setState(
          () => widget.courses = auxCourse); // Setando os valores no estado
    }
  }

  // Métodos
  void navigate(e) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => DetailsPage(course: e)));

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
                if(widget.courses.length != 0) Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text.rich(TextSpan(
                          text: 'Total de cursos encontrados: ',
                          style: AppTextStyles.body,
                          children: [
                            TextSpan(
                                text: '${widget.courses.length}',
                                style: AppTextStyles.bodyBold)
                          ])),
                    ],
                  ),
                ),
                if (widget.courses.length == 0)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 50),
                    child: Column(
                      children: [
                        Text(
                          'Sinto Muito!',
                          style: AppTextStyles.heading40,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Nenhum resultado para sua pesquisa.',
                          style: AppTextStyles.body20,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Icon(Icons.sentiment_dissatisfied,
                            size: 50, color: AppColors.darkBlue),
                      ],
                    ),
                  ),
                Expanded(
                  child: GridView.count(
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    crossAxisCount: 2,
                    childAspectRatio: 0.85,
                    children: widget.courses
                        .map((e) =>
                            CardWidget(onTap: () => navigate(e), course: e))
                        .toList(),
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
