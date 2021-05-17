import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_facul/details/widgets/appbar/app_bar_widget.dart';
import 'package:search_facul/details/widgets/detail/detail_widget.dart';
import 'package:search_facul/core/core.dart';
// import 'package:url_launcher/url_launcher.dart';

// _launchURL() async {
//   const url = 'https://flutter.io';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

class DetailsPage extends StatelessWidget {
  // Atributos
  final double iconSize = 25;
  final Color iconColor = AppColors.secondary;
  final double boxShadowOpacity = 0.3;

  // Métodos
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(boxShadowOpacity),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: Column(
                          children: [
                            Text('Curso', style: AppTextStyles.bodyBold25),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Presencial', style: AppTextStyles.body16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.query_builder,
                                        size: 16, color: iconColor),
                                    SizedBox(width: 5),
                                    Text('5 anos', style: AppTextStyles.body16),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('4', style: AppTextStyles.body16),
                                    SizedBox(width: 5),
                                    Icon(Icons.star,
                                        size: 16, color: iconColor),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        DetailWidget(
                          title: 'Grau acadêmico',
                          content: 'Bacharelado',
                          icon: Icon(Icons.school,
                              size: iconSize, color: iconColor),
                        ),
                        DetailWidget(
                          title: 'Turno',
                          content: 'Integral',
                          icon: Icon(Icons.wb_sunny,
                              size: iconSize, color: iconColor),
                        ),
                        DetailWidget(
                          title: 'Descrição',
                          content:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                          icon: Icon(Icons.description,
                              size: iconSize, color: iconColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(boxShadowOpacity),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: Column(
                          children: [
                            Text('Universidade',
                                style: AppTextStyles.bodyBold25),
                            SizedBox(height: 5),
                            Text('Particular', style: AppTextStyles.body16),
                          ],
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        DetailWidget(
                          title: 'Email',
                          content: 'inatel@inatel.com',
                          icon: Icon(Icons.mail,
                              size: iconSize, color: iconColor),
                        ),
                        DetailWidget(
                          title: 'Telefone',
                          content: '3534719200',
                          icon: Icon(Icons.phone,
                              size: iconSize, color: iconColor),
                        ),
                        DetailWidget(
                          title: 'Endereço',
                          content:
                              'Av. João de Camargo, 510 - Centro, Santa Rita do Sapucaí - MG',
                          icon: Icon(Icons.place,
                              size: iconSize, color: iconColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18),
              // RaisedButton(
              //   onPressed: _launchURL,
              //   child: new Text('Show Flutter homepage'),
              // ),
              // DetailWidget(
              //   title: 'Site oficial',
              //   content: 'https://inatel.br/home/',
              //   icon: Icon(Icons.web, size: iconSize, color: iconColor),
              // ),
              // SizedBox(height: 18),
            ],
          ),
        ));
  }
}
