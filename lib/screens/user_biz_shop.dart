import 'package:big_biz/providers/shop_navigator.dart';
import 'package:big_biz/screens/shop_screens/nft_page.dart';
import 'package:big_biz/screens/shop_screens/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class USerBizShop extends StatelessWidget {
  final String bizName;
  final String bizBrand;
  const USerBizShop({Key? key, required this.bizName, required this.bizBrand})
      : super(key: key);

  static List<Widget> pages = [
    const ShopPage(),
    const NftPage()
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_rounded),
              ),
            ],
            title: Row(
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          actionsAlignment: MainAxisAlignment.center,
                          content: Container(
                            height: 15.h,
                            width: 12.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(bizBrand),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: CircleAvatar(
                    radius: 19,
                    backgroundColor: Colors.white70,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(bizBrand),
                    ),
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(bizName),
              ],
            ),
          ),
          body: pages[context.watch<ShopNavigator>().getSelectIndex],
          bottomNavigationBar: BottomNavigationBar(// TODO: add crypto page also
            currentIndex: context.watch<ShopNavigator>().getSelectIndex,
            onTap: context.read<ShopNavigator>().onTapItem,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.business_center),
                label: 'Shop'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.image_outlined),
                  label: 'NTFs'
              )
            ],
          ),
        );
      },
    );
  }
}
