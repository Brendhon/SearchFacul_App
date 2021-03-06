import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_facul/core/core.dart';
import 'package:search_facul/result/result_page.dart';
import 'package:search_facul/shared/models/course_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Atributos
  double borderRadius = 5;
  bool empty = false;
  String inputText = '';
  String option = 'name';
  List<DropdownMenuItem<String>> options = [
    DropdownMenuItem<String>(
        child: Text('Cursos', style: AppTextStyles.bodyWhite15),
        value: 'name'),
    DropdownMenuItem<String>(
        child: Text('Faculdades', style: AppTextStyles.bodyWhite15),
        value: 'ies'),
    DropdownMenuItem<String>(
        child: Text('Cidades', style: AppTextStyles.bodyWhite15),
        value: 'city'),
  ];

  // Métodos
  void checkEmpty() => setState(() => empty = true);
  void setInputText(String str) => setState(() => inputText = str);
  void setOption(value) => setState(() => option = value.toString());
  void sendValues() => Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ResultPage(
                value: inputText,
                option: option,
              )));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Container(
              color: AppColors.backPrimary,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Encontre o melhor curso!',
                      style: AppTextStyles.heading40,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Vamos ajudá-lo-á a encontrar os melhores cursos nas melhores universidades',
                      style: AppTextStyles.body20,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    if (empty && inputText == '') Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Row(
                        children: [
                          Text(
                            'Digite algo para pesquisar',
                            style: AppTextStyles.error,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(borderRadius),
                          topRight: Radius.circular(borderRadius),
                        ),
                        border: Border.fromBorderSide(
                            BorderSide(color: AppColors.lightBlue)),
                      ),
                      child: TextField(
                          onChanged: setInputText,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(borderRadius),
                                topRight: Radius.circular(borderRadius),
                              )),
                              hintText: 'Realize uma pesquisa')),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: AppColors.darkBlue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(borderRadius),
                          bottomRight: Radius.circular(borderRadius),
                        ),
                        border: Border.fromBorderSide(
                            BorderSide(color: AppColors.lightBlue)),
                      ),
                      child: DropdownButton<String>(
                        items: options,
                        onChanged: setOption,
                        value: option,
                        dropdownColor: AppColors.darkBlue,
                        iconSize: 30,
                        iconEnabledColor: Colors.white,
                        isExpanded: true,
                        underline: SizedBox(),
                        iconDisabledColor: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: inputText != '' ? sendValues : checkEmpty,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.darkBlue,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.fromBorderSide(
                              BorderSide(color: AppColors.lightBlue)),
                        ),
                        child: Text(
                          "Pesquisar",
                          style: AppTextStyles.bodyWhite20,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
