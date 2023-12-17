import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/widgets/widget1.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  bool isSelected = true;
  void toggleSwitch(bool av) {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Additional information'),
          leading: const Icon(Icons.arrow_back),
        ),
        body: Column(
          children: [
            profile(
                icon1st: Icons.share,
                data: 'Share Dukaan app',
                icon2nd: Icons.keyboard_arrow_right_sharp),
            profile(
                icon1st: Icons.text_snippet,
                data: 'Change Language',
                icon2nd: Icons.keyboard_arrow_right),
            ListTile(
              leading: Icon(FontAwesomeIcons.whatsapp),
              title: Text('Whatsapp chat Support'),
              trailing: Switch(
                value: isSelected,
                onChanged: toggleSwitch,
                activeColor: Colors.blue,
              ),
            ),
            // profile(
            //     icon1st: FontAwesomeIcons.whatsapp,
            //     data: 'Whatsapp chat Support',
            //     icon2nd: Icons.toggle_on_sharp),
            profile(icon1st: Icons.lock_outlined, data: 'Privacy Policy'),
            profile(icon1st: Icons.star, data: 'Rate us'),
            profile(icon1st: Icons.logout, data: 'Sign out '),
            SizedBox(
              height: 250,
            ),

            Text(
              'Version',
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            Text(
              '2.4.2',
              style: TextStyle(
                  color: Colors.brown, fontSize: 17, letterSpacing: 2),
            )
          ],
        ));
  }
}
