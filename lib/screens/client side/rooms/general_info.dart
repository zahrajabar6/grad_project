import 'package:flutter/material.dart';
import 'package:grad_project/constant.dart';

class Generalinfo extends StatelessWidget {
  const Generalinfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('General Information', style: pageLabelTextStyle),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.maxFinite,
          child: Card(
            color: Colors.white,
            elevation: 6,
            shadowColor: Colors.black12,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Icon(
                    Icons.energy_savings_leaf,
                    color: mainBlue,
                    size: 40,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '12 KwH',
                          style: TextStyle(
                              fontSize: 22,
                              color: mainBlue,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Power usage today',
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade500),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
