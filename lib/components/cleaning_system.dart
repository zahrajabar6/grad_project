import 'package:flutter/material.dart';
import 'package:grad_project/constant.dart';

class CleaningSysCard extends StatefulWidget {
  const CleaningSysCard({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  State<CleaningSysCard> createState() => _CleaningSysCardState();
}

class _CleaningSysCardState extends State<CleaningSysCard> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height * 0.1,
      child: Card(
        color: Colors.white,
        elevation: 1.5,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Cleaning System", style: cardTitleTextStyle),
              Switch.adaptive(
                  activeColor: mainBlue,
                  value: value,
                  onChanged: (value) {
                    setState(() {
                      this.value = value;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
