import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class ActiveCards extends StatelessWidget {
  const ActiveCards({super.key});

  Color parseColor(String hexColor) {
    return Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Active Cards",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //card1
              Expanded(
                child: Column(
                  children: [
                    Card(
                      elevation: 1,
                      color: Colors.orange[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 120,
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [SvgPicture.asset("assets/images/meta.svg", height: 15, width: 15,
                                colorFilter: ColorFilter.mode(
                                  Colors.orange[900]!,
                                  BlendMode.srcIn,
                                ),),
                                Text("Bal: ***", style: TextStyle(fontWeight: FontWeight.bold),)],
                            ),
                            SizedBox(height: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Holder Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                SizedBox(height: 8,),
                                Text("**** **** **** *789", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.visibility_off, size: 18),
                        label: const Text("Show details", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[100],
                          foregroundColor: Colors.black,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              //card 2
              Expanded(
                child: Column(
                  children: [
                    Card(
                      elevation: 1,
                      color: Colors.lightBlue[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 120,
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [SvgPicture.asset("assets/images/meta.svg", height: 15, width: 15,
                                colorFilter: ColorFilter.mode(
                                  Colors.blue[900]!,
                                  BlendMode.srcIn,
                                ),),
                                Text("Bal: ***", style: TextStyle(fontWeight: FontWeight.bold),)],
                            ),
                            SizedBox(height: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Holder Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                SizedBox(height: 8,),
                                Text("**** **** **** *789", style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.visibility_off, size: 18),
                        label: const Text("Show details", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[100],
                          foregroundColor: Colors.black,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
