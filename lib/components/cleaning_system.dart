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
      height: widget.height * 0.15,
      child: Card(
        color: Colors.white,
        elevation: 6,
        shadowColor: Colors.black12,
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Cleaning System", style: cardBigTitleTextStyle),
                    Switch.adaptive(
                        activeColor: mainBlue,
                        value: value,
                        inactiveTrackColor: secondaryBlue,
                        onChanged: (value) {
                          setState(() {
                            this.value = value;
                          });
                        })
                  ],
                ),
                const Text(
                  'The weather is dusty, turn on the cleaning system',
                  style: cardTextTextStyle,
                  textAlign: TextAlign.start,
                ),
              ],
            )),
      ),
    );
  }
}
