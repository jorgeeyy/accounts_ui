import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_svg/flutter_svg.dart';

class RecentTransactions extends StatefulWidget {
  const RecentTransactions({super.key});

  @override
  State<RecentTransactions> createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  List<dynamic> transactions = [];

  @override
  void initState() {
    super.initState();
    loadTransactions();
  }

  Future<void> loadTransactions() async {
    final String response =
    await rootBundle.loadString('assets/data/transactions.json');
    final data = json.decode(response);
    setState(() {
      transactions = data;
    });
  }

  Color parseColor(String hexColor) {
    return Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Recent Transactions",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Text("See all", style: TextStyle(color: Colors.grey, fontSize: 16)),
            ],
          ),
          const SizedBox(height: 12),
          //list of transactions
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: transactions.length,
            itemBuilder: (context, index) {
              final tx = transactions[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                      parseColor(tx["color"]).withValues(alpha: 0.0),
                      radius: 20,
                      child: SvgPicture.asset(
                        'assets/images/${tx["logo"]}.svg',
                        width: 30,
                        height: 30,
                        colorFilter: ColorFilter.mode(
                          parseColor(tx["color"]),
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(tx["title"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 18)),
                              Text(tx["date"],
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                            ],
                          ),
                          Text(
                            tx["amount"],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}




// Container(
//     child: Column(
//   children: [Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [Text("Recent Transactions"), Text("See all")],
//   ),
//     SizedBox(height: 10),
//     Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             Icon(Icons.face),
//             SizedBox(width: 10,),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Spotify charged your card"),
//                     Text("Oct 20, 2025")
//                   ],
//                 ),
//                 Text("12.00")
//               ],
//             ),
//           ],
//         ),
//         // Icon(Icons.face),
//         // Icon(Icons.face)
//       ],
//     )
//   ],
// )),
// Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: const [
//         Text("Recent Transactions",
//             style: TextStyle(fontWeight: FontWeight.bold)),
//         Text("See all", style: TextStyle(color: Colors.grey)),
//       ],
//     ),
//     const SizedBox(height: 10),
//     Row(
//       children: [
//         const Icon(Icons.face, size: 30),
//         const SizedBox(width: 10),
//         Expanded(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text("Spotify charged your card"),
//                   Text("Oct 20, 2025",
//                       style: TextStyle(color: Colors.grey, fontSize: 12)),
//                 ],
//               ),
//               const Text("12.00",
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//             ],
//           ),
//         ),
//       ],
//     ),
//   ],
// ),