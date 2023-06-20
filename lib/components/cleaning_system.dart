import 'package:flutter/material.dart';
import 'package:grad_project/constant.dart';
import 'package:grad_project/services/device_data.dart';
import 'package:grad_project/services/methods.dart';
import 'package:provider/provider.dart';

class CleaningSysCard extends StatefulWidget {
  const CleaningSysCard({
    super.key,
    required this.width,
    required this.height,
    required this.status,
    required this.isWaiting,
  });

  final double width;
  final double height;
  final String status;
  final bool isWaiting;

  @override
  State<CleaningSysCard> createState() => _CleaningSysCardState();
}

class _CleaningSysCardState extends State<CleaningSysCard> {
  @override
  Widget build(BuildContext context) {
    bool value = Provider.of<DeviceData>(context, listen: true).cSys.isOn;
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
                          Provider.of<DeviceData>(context, listen: false)
                              .updateCleaningSys(Provider.of<DeviceData>(
                                      context,
                                      listen: false)
                                  .cSys);
                          Methodes.postApiRequestCSys(value);
                        })
                  ],
                ),
                Text(
                  widget.isWaiting
                      ? '...'
                      : widget.status == 'Not Dusty'
                          ? 'The weather is not dusty, you don\'t need to turn on the cleaning system'
                          : 'The weather is dusty, you need to turn on the cleaning system',
                  style: cardTextTextStyle,
                  textAlign: TextAlign.start,
                ),
              ],
            )),
      ),
    );
  }
}
