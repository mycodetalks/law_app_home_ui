import 'package:flutter/material.dart';
import 'package:law_app_home_ui/widgets/constants.dart';

class CategoryCard extends StatelessWidget {
  
  final String _title;
  final Color _bgColor;
  const CategoryCard(this._title, this._bgColor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 40,
          width: 104,
          decoration: BoxDecoration(
            color: _bgColor,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 24),
          child: Text(
            _title,
            style: TextStyle(
                color: kLawyerCategoryTextColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
