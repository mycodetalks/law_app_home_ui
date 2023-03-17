import 'package:flutter/material.dart';
import 'package:law_app_home_ui/models/categories.dart';
import 'package:law_app_home_ui/models/details.dart';
import 'package:law_app_home_ui/models/lawyers.dart';
import 'package:law_app_home_ui/widgets/constants.dart';

class LawAppUI extends StatefulWidget {
  const LawAppUI({super.key});

  @override
  State<LawAppUI> createState() => _LawAppUIState();
}

class _LawAppUIState extends State<LawAppUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Law App',
          style: TextStyle(color: kWhiteColor, fontWeight: FontWeight.bold),
        ),
        backgroundColor: kBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/legal.jpg',
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 20,
            ),
            buildCategoriesList(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                'Top Lawyers',
                style: TextStyle(
                  color: kLawyerCategoryTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: topLawyers.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailsPage(lawyer: topLawyers[index])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Stack(
                      children: [
                        Hero(
                          tag: topLawyers[index],
                          child: Image.network(
                            topLawyers[index].avatar,
                          ),
                        ),
                        Positioned(
                            left: 39,
                            bottom: 1,
                            child: Text(
                              topLawyers[index].name,
                              style: TextStyle(
                                  decorationStyle: TextDecorationStyle.double,
                                  fontWeight: FontWeight.bold,
                                  color: kLawyerCategoryTextColor),
                            ))
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  buildCategoriesList() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CategoryCard(
                  'Lawyers',
                  kLawTopicsColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CategoryCard('  Courts', kLawTopicsColor),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CategoryCard('Divorce', kLawTopicsColor),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CategoryCard('    Tax', kLawTopicsColor),
              ),
            ],
          ),
        ));
  }
}
