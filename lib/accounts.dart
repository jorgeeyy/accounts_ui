import 'package:flutter/material.dart';

class Accounts extends StatelessWidget {
  const Accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Total Balance",
              style: TextStyle(color: Colors.grey[700], fontSize: 18),
            ),
            SizedBox(width: 10),
            Icon(Icons.remove_red_eye, color: Colors.grey[500]),
          ],
        ),
        Text(
          "\$20,000.00",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: Icon(Icons.add, size: 30,),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                  ),),
                  SizedBox(height: 10),
                  Text("Add Funds", style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: Icon(Icons.arrow_outward, size: 30,),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Send", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: Icon(Icons.call_received, size: 30,),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Withdraw", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: Icon(Icons.more_horiz, size: 30,),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("More", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
      ],
    );
  }
}
