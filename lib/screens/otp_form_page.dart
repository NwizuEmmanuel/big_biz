import 'package:big_biz/screens/biz_form_page.dart';
import 'package:big_biz/screens/tel_form_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OtpFormPage extends StatelessWidget {
  const OtpFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (p0, p1, p2) {
      return Scaffold(
          body: ListView(children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 100, left: 10, right: 10, bottom: 10),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'OTP code',
                  prefixIcon: Icon(Icons.security),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 3.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const BizFormPage();
                  }));
                },
                child: Container(
                  height: 7.h,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  alignment: Alignment.center,
                  child: Text(
                    'Verify',
                    style: TextStyle(fontSize: 20.sp, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const TelFormPage();
                        }));
                      },
                      child: Text(
                        'Go back',
                        style: TextStyle(fontSize: 15.sp),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend code',
                        style: TextStyle(fontSize: 15.sp),
                      ))
                ],
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
      ]));
    });
  }
}
