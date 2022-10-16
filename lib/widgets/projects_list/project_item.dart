import 'package:flutter/material.dart';
import 'package:portfolio2022/models/data/project_item_model.dart';
import 'package:portfolio2022/extensions/hover_extension.dart';

class ProjectItem extends StatelessWidget {
  final ProjectItemModel model;

  const ProjectItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: SizedBox(
        width: 360,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 180,
              child: Image.asset(
                model.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    model.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                    softWrap: true,
                  ),
                  Text(
                    model.caption,
                    style: const TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ).showClickOnHover.moveUpOnHover;
  }
}
