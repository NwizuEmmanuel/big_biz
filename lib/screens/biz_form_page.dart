import 'package:big_biz/constructors/biz_card.dart';
import 'package:big_biz/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BizFormPage extends StatefulWidget {
  const BizFormPage({Key? key}) : super(key: key);

  @override
  _BizFormPageState createState() => _BizFormPageState();
}

class _BizFormPageState extends State<BizFormPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.add_business),
            title: const Text('Create ur Biz card'),
          ),
          body: ListView(
            children: [
              ListTile(
                subtitle: TextFormField(
                  maxLength: 20,
                  decoration: const InputDecoration(
                      labelText: 'Biz name',
                      helperText: 'Enter ur business name',
                      suffixIcon: Icon(Icons.home_work)),
                ),
              ),
              ListTile(
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Biz description'),
                    TextFormField(
                      autofocus: false,
                      maxLength: 200,
                      maxLines: 7,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        helperText: 'what your business is all about',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              ListTile(
                subtitle: InkWell(
                  onTap: () {
                    showDialog(context: context, builder: (context) {
                      return const AlertDialog(
                        content: Text('No image now.'),
                      );
                    },);
                  },
                  child: Container(
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '(Optional) Biz brand',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    height: Adaptive.h(30),
                    width: Adaptive.w(60),
                    decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/Futuristic HUD.png'),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              ListTile(
                subtitle: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return const HomePage();
                      },
                    ));
                  },
                  child: Container(
                    height: 6.h,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'create',
                      style: TextStyle(fontSize: 18.sp, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
