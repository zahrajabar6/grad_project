import 'package:flutter/material.dart';
import 'package:grad_project/constant.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us', style: appBarTextStyle),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InfoCard(
                title: 'No More Load Shedding!',
                text: 'Tired of Load Shedding? Our Solar System is the Answer',
                imageURL: 'assets/images/icon1.png',
              ),
              InfoCard(
                title: 'Reduced Expenses!',
                text: 'No More Expenses on Diesel Generators & UPS',
                imageURL: 'assets/images/icon2.png',
              ),
              InfoCard(
                title: 'Reduced Electricity Bills!',
                text:
                    'Visible Reduction in your Electricity Bills with our On-Grid Solar Solutions',
                imageURL: 'assets/images/icon3.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.title,
    required this.text,
    required this.imageURL,
  });

  final String title;
  final String text;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 210,
      child: Card(
        elevation: 6,
        shadowColor: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 80,
                width: 80,
                child: CircleAvatar(
                  backgroundColor: Colors.blue.shade50,
                  radius: 20,
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(imageURL)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: pageLabelTextStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: pageTextTextStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
