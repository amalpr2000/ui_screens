import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  final videoURL = 'https://youtu.be/id1E0lqnUtY';
  late YoutubePlayerController _controller;
  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[800],
        title: Text('Dukaan Premium'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 130,
                  width: double.infinity,
                  color: Colors.blue[800],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Card(
                    elevation: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 200,
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/logo.png',
                              width: 200,
                              height: 55,
                            ),
                            Text(
                              'Get Dukaan Premium for just ',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '₹4,999/year',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'All the advance features for scaling your',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[600]),
                            ),
                            Text(
                              'business',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[600]),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Features',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            featureTile(
                icon: Icons.language,
                title: 'Custom domain name',
                subtitle:
                    'Get your own custom domain and build your brand on the internet.'),
            featureTile(
                icon: Icons.verified_outlined,
                title: 'Verified seller badge',
                subtitle:
                    'Get green verified badge under your store name and build trust.'),
            featureTile(
                icon: Icons.laptop_mac_rounded,
                title: 'Dukaan for PC',
                subtitle:
                    'Access all the exclusive premium features on Dukaan for PC.'),
            featureTile(
                icon: Icons.headphones_rounded,
                title: 'Priority support',
                subtitle:
                    'Get your questions resolved with our priority customer support.'),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'What is Dukaan Premium?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Card(
                elevation: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 200,
                  width: 350,
                  child: YoutubePlayer(
                    controller: _controller,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Frequently asked questions',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            ExpandedTile(
                question: 'What types of businesses can use Dukaan Premium?',
                answer:
                    'Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online -Dukaan is the perfect platform for you.'),
            ExpandedTile(
                question: 'What is your refund policy?',
                answer:
                    'Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online -Dukaan is the perfect platform for you.'),
            ExpandedTile(
                question:
                    'Will there be an automatic charge after the paid trial?',
                answer:
                    'Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online -Dukaan is the perfect platform for you.'),
            ExpandedTile(
                question: 'What payment methods do you offer?',
                answer:
                    'Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online -Dukaan is the perfect platform for you.'),
            ExpandedTile(
                question: 'What happens when my free trail ends',
                answer:
                    'Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online -Dukaan is the perfect platform for you.'),
            ExpandedTile(
                question: 'What are the terms fot the custom  domain?',
                answer:
                    'Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online -Dukaan is the perfect platform for you.'),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Need help? Get in touch',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _iconcard(icon: Icons.chat_bubble_outline, str: 'Live Chat'),
                _iconcard(icon: Icons.phone_rounded, str: 'Phone Call'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Select Domain',
                  style: TextStyle(color: Colors.blue[800], fontSize: 16),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Get Premium',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  ListTile featureTile(
      {required icon, required String title, required String subtitle}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 40,
        color: Colors.blue[800],
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
    );
  }
}

_iconcard({required icon, required String str}) {
  return Card(
    elevation: 2,
    color: Colors.white,
    child: SizedBox(
      height: 70,
      width: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(icon), Text(str)],
      ),
    ),
  );
}

class ExpandedTile extends StatefulWidget {
  String question;
  String answer;
  ExpandedTile({super.key, required this.question, required this.answer});

  @override
  State<ExpandedTile> createState() => _ExpandedTileState();
}

class _ExpandedTileState extends State<ExpandedTile> {
  bool expandedOrNot = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          tilePadding: EdgeInsets.all(5),
          title: Text(
            widget.question,
            style: const TextStyle(fontSize: 17, color: Colors.black),
          ),
          trailing: Icon(
            expandedOrNot ? Icons.minimize_outlined : Icons.add,
            color: Colors.black,
          ),
          onExpansionChanged: (value) {
            return setState(() {
              expandedOrNot = value;
            });
          },
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(widget.answer),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Divider(
            thickness: 1,
          ),
        )
      ],
    );
  }
}
