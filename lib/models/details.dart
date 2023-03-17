 
import 'package:flutter/material.dart';
import 'package:law_app_home_ui/models/lawyers.dart';
import 'package:law_app_home_ui/widgets/constants.dart';

class DetailsPage extends StatefulWidget {
  final LawyerModel lawyer;
  const DetailsPage({super.key, required this.lawyer });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}



class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: Text(
          widget.lawyer.name,
          style: TextStyle(
            color: kWhiteColor,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        children: [
        
          Hero(
            tag: widget.lawyer.name,  
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  widget.lawyer.avatar,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              widget.lawyer.about,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}