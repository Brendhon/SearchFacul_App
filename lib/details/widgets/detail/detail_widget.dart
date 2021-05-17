import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_facul/core/core.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailWidget extends StatelessWidget {
  // Atributos
  final String title;
  final String content;
  final Icon icon;

  // Construtor
  const DetailWidget({
    Key? key,
    required this.title,
    required this.icon,
    this.content = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              icon,
              SizedBox(width: 5),
              Flexible(
                child: Text(
                  title,
                  style: AppTextStyles.titleGreyBold,
                  overflow: TextOverflow.clip,
                ),
              ),
              SizedBox(width: 10),
            ]),
            if (content != '')
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  content,
                  style: AppTextStyles.body16,
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.justify,
                ),
              )
            else
              SizedBox(),
          ],
        ),
      ),
    );
  }
}
