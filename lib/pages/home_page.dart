import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/util/my_buttons.dart';
import 'package:walletapp/util/my_card.dart';
import 'package:walletapp/util/my_listtile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          //appbar
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Text(
                  'My',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(
                  ' Cards',
                  style: TextStyle(fontSize: 28),
                ),
                SizedBox(
                  width: 200,
                ),
                CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromARGB(255, 199, 220, 210),
                    child: Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 15, 14, 14),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          //cards
          Container(
            height: 200,
            child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: const [
                  MyCard(
                    balance: 4550,
                    cardNumber: 8318804975,
                    color: Color.fromARGB(255, 162, 6, 6),
                    expiryMonth: 02,
                    expiryYear: 2029,
                  ),
                  MyCard(
                    balance: 43500,
                    cardNumber: 831883333333,
                    color: Color.fromARGB(255, 198, 197, 170),
                    expiryMonth: 09,
                    expiryYear: 2035,
                  ),
                  MyCard(
                    balance: 230,
                    cardNumber: 831833334944,
                    color: Colors.blue,
                    expiryMonth: 12,
                    expiryYear: 2022,
                  ),
                ]),
          ),
          const SizedBox(
            height: 15,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade800,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                    iconImagePath: 'lib/icons/send-money.png',
                    buttonText: 'Send'),
                MyButton(
                    iconImagePath: 'lib/icons/card-payment.png',
                    buttonText: 'Pay'),
                MyButton(
                    iconImagePath: 'lib/icons/bill.png', buttonText: 'Bills'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Column(
                  children: [
                    MyListTile(
                        iconImagePath: 'lib/icons/static.png',
                        tileSubTitle: 'Statics',
                        tileTitle: 'Payment & Income'),
                    SizedBox(
                      height: 20,
                    ),
                    MyListTile(
                        iconImagePath: 'lib/icons/card-payment.png',
                        tileSubTitle: 'Transaction',
                        tileTitle: 'Transaction History')
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 61, 100, 231),
        child: Container(
          child: const Icon(
            Icons.monetization_on,
            size: 30,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
              iconSize: 40,
              color: const Color.fromARGB(255, 80, 169, 241),
            ),
            // SizedBox(
            // width: 270,
            //),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              iconSize: 40,
              color: const Color.fromARGB(255, 80, 169, 241),
            ),
          ],
        ),
      ),
    );
  }
}
