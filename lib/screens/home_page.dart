import 'package:big_biz/constructors/biz_card.dart';
import 'package:big_biz/screens/user_biz_shop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<BizCard> bizCards = [
    BizCard(
        brandImage: 'assets/images/shopping.png',
        bizName: 'Bird Inc.',
        bizDetails: 'We deal in Jewelries'),
    BizCard(
        brandImage: 'assets/images/shopping.png',
        bizName: 'Jock Inc.',
        bizDetails: 'We deal in Jewelries'),
    BizCard(
        brandImage: 'assets/images/shopping.png',
        bizName: 'Stock Inc.',
        bizDetails: 'We deal in Jewelries'),
    BizCard(
        brandImage: 'assets/images/Futuristic HUD.png',
        bizName: 'Loki Inc.',
        bizDetails: 'We deal in Jewelries'),
    BizCard(
        brandImage: 'assets/images/shopping.png',
        bizName: 'Cargo Inc.',
        bizDetails: 'We deal in Jewelries'),
    BizCard(
        brandImage: 'assets/images/Futuristic HUD.png',
        bizName: 'Henry Inc.',
        bizDetails: 'We deal in Jewelries'),
    BizCard(
        brandImage: 'assets/images/shopping.png',
        bizName: 'Stock Inc.',
        bizDetails: 'We deal in Jewelries'),
    BizCard(
        brandImage: 'assets/images/Futuristic HUD.png',
        bizName: 'Britain Inc.',
        bizDetails: 'We deal in Jewelries'),
    BizCard(
        brandImage: 'assets/images/shopping.png',
        bizName: 'Ford Inc.',
        bizDetails: 'We deal in Jewelries'),
    BizCard(
        brandImage: 'assets/images/Futuristic HUD.png',
        bizName: 'Microsoft Inc.',
        bizDetails: 'We deal in Jewelries'),
    BizCard(
        brandImage: 'assets/images/shopping.png',
        bizName: 'Stock Inc.',
        bizDetails: 'We deal in Jewelries'),
    BizCard(
        brandImage: 'assets/images/shopping.png',
        bizName: 'Stock Inc.',
        bizDetails: 'We deal in Jewelries')
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('BigBiz'),
            elevation: 0.0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_rounded),
              )
            ],
          ),
          body: ListView.builder(
            itemCount: bizCards.length,
            itemBuilder: (context, index) {
              return bizCardWidget(bizCards[index], 4.h, 15.h, 12.w);
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add_business),
          ),
        );
      },
    );
  }

  Widget bizCardWidget(
      BizCard bizCard, double height, double alertHeight, double alertWidth) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return USerBizShop(
                  bizName: bizCard.bizName, bizBrand: bizCard.brandImage);
            },
          ),
        );
      },
      child: Card(
        child: ListTile(
          title: Text(bizCard.bizName),
          leading: InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(bizCard.bizName),
                    alignment: Alignment.topCenter,
                    actionsAlignment: MainAxisAlignment.center,
                    content: Container(
                      height: alertHeight,
                      width: alertWidth,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(bizCard.brandImage),
                              fit: BoxFit.cover)),
                    ),
                    actions: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add_business))
                    ],
                  );
                },
              );
            },
            child: CircleAvatar(
              backgroundColor: Colors.white70,
              radius: 25,
              child: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(bizCard.brandImage),
              ),
            ),
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(bizCard.bizDetails),
              SizedBox(
                height: height,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
