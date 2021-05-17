import 'package:flutter/material.dart';
import 'package:search_facul/core/app_colors.dart';
import 'package:search_facul/core/app_text_styles.dart';
import 'package:search_facul/details/details_page.dart';
import 'package:search_facul/result/widgets/appbar/app_bar_widget.dart';
import 'package:search_facul/result/widgets/card/card_widget.dart';
import 'package:search_facul/shared/models/course_model.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

CourseModel course = CourseModel(
  name: 'Engenharia de computação',
  ies: 'INATEL',
  city: 'Santa Rita do Sapucaí',
  uf: 'MG',
  address: 'Av. João de Camargo, 510 - Centro',
  period: 'Integral',
  category: 'Privada',
  description:
      'O curso de Engenharia de Computação do Inatel foi criado em 2004 e, desde então, forma profissionais cada vez mais essenciais para o mercado de Tecnologia da Informação e Comunicação.',
  duration: 5,
  score: 4,
  site: 'https://inatel.br/home/',
  email: 'inatel@inatel.br',
  modality: 'Presencial',
  telephone: '3534719200',
  titration: 'Bacharelado',
);

List<CourseModel> courses = [course, course, course, course];

class _ResultPageState extends State<ResultPage> {
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text.rich(TextSpan(
                          text: 'Total de cursos encontrados: ',
                          style: AppTextStyles.body,
                          children: [
                            TextSpan(
                                text: '${courses.length}',
                                style: AppTextStyles.bodyBold)
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
                    children: courses
                        .map((e) => CardWidget(onTap: () => navigate(e), course: e))
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
