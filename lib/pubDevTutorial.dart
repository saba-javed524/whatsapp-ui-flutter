import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart' as badges;
import 'package:pin_code_fields/pin_code_fields.dart';

class PubDevTutorial extends StatelessWidget {
  const PubDevTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('pub.dev'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PinCodeTextField(
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(50),
                  fieldHeight: 50,
                  fieldWidth: 50),
              appContext: context,
              length: 4,
              onChanged: (value) {})
          // Center(
          //   child: badges.Badge(
          //     badgeStyle: badges.BadgeStyle(
          //         shape: badges.BadgeShape.instagram, badgeColor: Colors.teal),
          //     child: Icon(
          //       Icons.shopping_bag_outlined,
          //       size: 50,
          //     ),
          //     badgeContent: Text(
          //       '3',
          //       style: TextStyle(color: Colors.white),
          //     ),
          //   ),
          // )
          // Center(
          //   child: Icon(
          //     Icons.home,
          //     size: 60,
          //   ),
          // ),
          // Center(
          //     child: FaIcon(
          //   FontAwesomeIcons.house,
          //   size: 60,
          // )),
        ],
      ),
    );
  }
}
