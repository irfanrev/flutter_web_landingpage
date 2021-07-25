import 'package:ayu_web/pages/page-6.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Apa cing yang mau irfan bilang?',
                  style: GoogleFonts.qwigley(fontSize: 42),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 600,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          AlertDialog alertBenar = AlertDialog(
                            title: Text('2 juta rupiah dipotong pajak!'),
                          );
                          showDialog(
                              context: context,
                              builder: (context) => alertBenar);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 7,
                                    offset: Offset(1, 3))
                              ]),
                          child: Text('A. Irfan suka sama Ayu',
                              style: GoogleFonts.qwigley(fontSize: 42)),
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      InkWell(
                        onTap: () {
                          AlertDialog salah1 = AlertDialog(
                            title: Text('Salah!'),
                          );
                          showDialog(
                              context: context, builder: (context) => salah1);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 7,
                                    offset: Offset(1, 3))
                              ]),
                          child: Text('B. Bebek kakinya dua',
                              style: GoogleFonts.qwigley(fontSize: 42)),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      InkWell(
                        onTap: () {
                          AlertDialog salah2 = AlertDialog(
                            title: Text('Salah!'),
                          );
                          showDialog(
                              context: context, builder: (context) => salah2);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 7,
                                    offset: Offset(1, 3))
                              ]),
                          child: Text('C. Gatau',
                              style: GoogleFonts.qwigley(fontSize: 42)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text('Back',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page6()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text('Next',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
