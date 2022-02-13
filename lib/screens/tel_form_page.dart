import 'package:big_biz/screens/otp_form_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TelFormPage extends StatelessWidget {
  const TelFormPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (p0, p1, p2) {
      return Scaffold(
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 100, left: 10, right: 10, bottom: 10),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    prefixIcon: Icon(Icons.phone),
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Telephone number',
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 3.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                      return const OtpFormPage();
                    }));
                  },
                  child: Container(
                    height: 7.h,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    alignment: Alignment.center,
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 20.sp, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Container(
                  height: 50.h,
                  width: 100.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Futuristic HUD.png'),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          ),
        ]),
      );
    });
  }
}
