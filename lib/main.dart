import 'package:accounts_ui/accounts.dart';
import 'package:accounts_ui/active_cards.dart';
import 'package:accounts_ui/recent_transactions.dart';
import 'package:flutter/material.dart';
import 'custom_bottom_navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'EbGaramond'),
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10.0),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, color: Colors.grey, size: 30),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Hi, welcome back",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.notifications,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Accounts(),
                SizedBox(height: 20),
                Divider(
                  color: Colors.grey[200],
                  // thickness: 0.2,
                ),
                ActiveCards(),
                SizedBox(height: 20),
                RecentTransactions(),
                SizedBox(height: 10),
                // Container(
                //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                //   margin: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(30),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.black.withValues(alpha: 0.1),
                //         offset: Offset(0, 5),
                //         blurRadius: 15,
                //       ),
                //     ],
                //   ),
                //   width: double.infinity,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       NavIcon(icon: Icons.home_outlined, isActive: true),
                //       Icon(Icons.home_outlined),
                //       Icon(Icons.account_balance_wallet_outlined),
                //       Icon(Icons.person_2_outlined),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
