import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool isswitchon = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text('      Additional Information'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          screen1_tile(
              trailingicon: Icon(Icons.share_outlined),
              title: 'Share Dhukkan App',
              leadingicon: Icons.keyboard_arrow_right_outlined),
          screen1_tile(
              trailingicon: Icon(Icons.messenger_outline),
              title: 'Change Language',
              leadingicon: Icons.keyboard_arrow_right_outlined),
          ListTile(
            leading: Icon(Icons.wechat),
            title: Text('WhatsApp Chat Support'),
            trailing: Switch(
                value: isswitchon,
                onChanged: (value) {
                  setState(() {
                    if (isswitchon == true) {
                      isswitchon = false;
                    } else {
                      isswitchon = true;
                    }
                  });
                }),
          ),
          screen1_tile(
            trailingicon: Icon(Icons.lock_outline),
            title: 'Privacy Policy',
          ),
          screen1_tile(
            trailingicon: Icon(Icons.star_border_rounded),
            title: 'Rate Us',
          ),
          screen1_tile(
            trailingicon: Icon(Icons.logout),
            title: 'Sign Out',
          ),
          SizedBox(
            height: 300,
          ),
          Text(
            'Version',
            style: TextStyle(fontWeight: FontWeight.w100, fontSize: 14),
          ),
          Text('2.4.2'),
        ],
      )),
    );
  }

  ListTile screen1_tile({required trailingicon, required title, leadingicon}) {
    return ListTile(
      leading: trailingicon,
      title: Text(
        title,
      ),
      trailing: IconButton(onPressed: () {}, icon: Icon(leadingicon)),
    );
  }
}
