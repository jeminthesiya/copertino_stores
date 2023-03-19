import 'package:copertino_stores/cuportino_screen/provider/cart_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shopping_Cart_Screen extends StatefulWidget {
  const Shopping_Cart_Screen({Key? key}) : super(key: key);

  @override
  State<Shopping_Cart_Screen> createState() => _Shopping_Cart_ScreenState();
}

class _Shopping_Cart_ScreenState extends State<Shopping_Cart_Screen> {

  Cart_provider? CartProvidertrue;
  Cart_provider? CartProvidertfalse;

  @override
  Widget build(BuildContext context) {
    CartProvidertfalse = Provider.of<Cart_provider>(context,listen: false);
    CartProvidertrue = Provider.of<Cart_provider>(context,listen: true);

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
                left: 5,
              ),
              child: Text(
                "Shopping Cart",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          SliverFillRemaining(
            child: CupertinoPageScaffold(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CupertinoTextField(
                        prefix: Icon(
                          CupertinoIcons.person_alt,
                          color: Colors.black26,
                        ),
                        placeholder: 'Name',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CupertinoTextField(
                        prefix: Icon(
                          CupertinoIcons.mail_solid,
                          color: Colors.black26,
                        ),
                        placeholder: 'Email',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CupertinoTextField(
                        prefix: Icon(
                          CupertinoIcons.location_solid,
                          color: Colors.black26,
                        ),
                        placeholder: 'Location',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: CupertinoTextField.borderless(
                        prefix: Icon(
                          CupertinoIcons.time,
                          color: Colors.black38,
                        ),
                        placeholder: "Delivery Time",
                        suffix: Text(
                         " ${CartProvidertrue!.delivery.day}-${CartProvidertrue!.delivery.month}-${CartProvidertrue!.delivery.year} ${CartProvidertrue!.delivery.hour}:${CartProvidertrue!.delivery.minute} ",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: CupertinoDatePicker(
                        onDateTimeChanged: (value) {
                          CartProvidertfalse!.changedate(value);
                        },
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: 40,
                            width: 40,
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
                              fontSize: 17,
                            ),
                            children: [
                              TextSpan(
                                text: '\$35.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black26,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "\$35.00",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 40,
                            width: 40,
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
                              fontSize: 17,
                            ),
                            children: [
                              TextSpan(
                                text: '\$98.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black26,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "\$98.00",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 40,
                            width: 40,
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
                              fontSize: 17,
                            ),
                            children: [
                              TextSpan(
                                text: '\$134.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black26,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "\$134.00",
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Shipping \$267.00",
                              style: TextStyle(
                                color: Colors.black26,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Tax \$48.06",
                              style: TextStyle(
                                color: Colors.black26,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Total \$315.06",
                              style: TextStyle(
                                color: CupertinoColors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
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
