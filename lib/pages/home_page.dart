import 'package:ayu_web/pages/page-2.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text(
          "Buat Ayu",
          style: GoogleFonts.qwigley(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: [
          Icon(
            Icons.favorite,
            color: Colors.red,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hallo', style: GoogleFonts.lato(fontSize: 30)),
                Text(
                  'Alfiani Nurtiana Ayu',
                  style: GoogleFonts.arizonia(fontSize: 100),
                ),
                Text(
                  'Ini merupakan web yang dibuat\noleh seorang yang mengagumi dirimu sejak lama\ndan ini dibuat khusus untuk dirimu.',
                  style: GoogleFonts.poppins(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            'Mulai tur sekarang?',
            style: GoogleFonts.poppins(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page2()));
                },
                child: Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text('Ayo mulai',
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  AlertDialog alert = AlertDialog(
                    title: Text('Mulai gak, takol nih'),
                    content: Container(
                      width: 300,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/images/pukul.png',
                        scale: 1,
                      ),
                    ),
                  );
                  showDialog(context: context, builder: (context) => alert);
                },
                child: Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text('Males ah',
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Center(
              child: Text(
                'From Irfan Maulana',
                style: GoogleFonts.poppins(fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
