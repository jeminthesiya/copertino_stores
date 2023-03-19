import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search_Screen extends StatefulWidget {
  const Search_Screen({Key? key}) : super(key: key);

  @override
  State<Search_Screen> createState() => _Search_ScreenState();
}

class _Search_ScreenState extends State<Search_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            leading: Icon(
              CupertinoIcons.back,
              size: 25,
            ),
            trailing: Icon(
              CupertinoIcons.settings,
              size: 25,
            ),
            largeTitle: Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
              ),
              child: CupertinoSearchTextField(),
            ),
          ),
          SliverFillRemaining(
            child: CupertinoPageScaffold(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              "assets/images/whitneybelt.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Whitney belt\n',
                            style: TextStyle(
                              color: CupertinoColors.black,
                              fontSize: 20,
                            ),
                            children: [
                              TextSpan(
                                text: '\$35',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black26,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            CupertinoIcons.add_circled,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              "assets/images/garden_strand.webp",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Garden strand\n',
                            style: TextStyle(
                              color: CupertinoColors.black,
                              fontSize: 20,
                            ),
                            children: [
                              TextSpan(
                                text: '\$98',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black26,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            CupertinoIcons.add_circled,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              "assets/images/strut_earrings.webp",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Strut earrings\n',
                            style: TextStyle(
                              color: CupertinoColors.black,
                              fontSize: 20,
                            ),
                            children: [
                              TextSpan(
                                text: '\$134',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black26,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            CupertinoIcons.add_circled,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              "assets/images/varsity_socks.webp",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Varsity socks\n',
                            style: TextStyle(
                              color: CupertinoColors.black,
                              fontSize: 20,
                            ),
                            children: [
                              TextSpan(
                                text: '\$13',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black26,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            CupertinoIcons.add_circled,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              "assets/images/weave_keyring.webp",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Weave keyring\n',
                            style: TextStyle(
                              color: CupertinoColors.black,
                              fontSize: 20,
                            ),
                            children: [
                              TextSpan(
                                text: '\$25',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black26,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            CupertinoIcons.add_circled,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              "assets/images/vegabond_sack.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'vagabond sack\n',
                            style: TextStyle(
                              color: CupertinoColors.black,
                              fontSize: 20,
                            ),
                            children: [
                              TextSpan(
                                text: '\$120',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black26,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            CupertinoIcons.add_circled,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
