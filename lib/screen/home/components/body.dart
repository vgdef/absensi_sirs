import 'package:absensi_sirs/components/rounded_button.dart';
import 'package:absensi_sirs/constants.dart';
import 'package:absensi_sirs/screen/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container (
          height:size.height * 0.8,
          child: Stack(
            children: <Widget>[
              Container (
                padding:  EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: 36 + kDefaultPadding,
                ),
                height: size.height * 0.8 - 15,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: 15,
                              left: kDefaultPadding,
                              right: kDefaultPadding,
                              bottom: 2,
                            ),
                            child: Text(
                              'Selamat Pagi SIRS!',
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 30.0,
                              ),
                            ),
                          ),
                          Row (
                            children: [
                              Padding(padding: EdgeInsets.only(
                                left:  kDefaultPadding,
                              ),
                              ),
                              Text( 'Manage your Attendance Here!',
                                style: GoogleFonts.lato(
                                  color: Colors.black,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Positioned(
                                left: 0.8,
                                child: RoundedButton(

                                  text: "Get Started!",
                                  textColor: Colors.black,
                                  color: kSecondColor,

                                  press: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) {
                                              return LoginScreen();
                                            }
                                        )

                                    );

                                  },

                                ),
                              ),


                            ],
                          )

                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
