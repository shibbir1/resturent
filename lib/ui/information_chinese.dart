import 'package:flutter/material.dart';
import 'package:khadok_application_8/ui/route.dart';

class InformationChinese extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chinese Restaurant'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            // Container(
            //     height: 150,
            //     decoration: BoxDecoration(
            //         image: DecorationImage(
            //             image: NetworkImage(
            //                 'https://lh5.googleusercontent.com/p/AF1QipPc56xLHU6CNEnbbgSpfqnq8FKf3_cRcOE2p-l4=w1080-k-no')))),
            _customButton(
                context: context,
                color: Colors.green.shade100,
                name: 'Hungry Thai & Indian Chinese Restaurant',
                image: 'assets/image/hungry.png',
                onTab: () {
                  Navigator.pushNamed(context, AppRoute.hungryinformation);
                }),
            _customButton(
                context: context,
                color: Colors.green.shade100,
                name: 'Silver Fork',
                image: 'assets/image/silver_fork.png',
                onTab: () {
                  Navigator.pushNamed(context, AppRoute.silverforkinformation);
                }),
            _customButton(
                context: context,
                color: Colors.green.shade100,
                name: 'Dhaka Food Chinese Thai Restaurant',
                image: 'assets/image/dhaka_food.png',
                onTab: () {
                  Navigator.pushNamed(context, AppRoute.dhakafoodinformation);
                }),
            _customButton(
                context: context,
                color: Colors.green.shade100,
                name: 'Hello Restaurant , Brahmanbaria',
                image: 'assets/image/hello_ restaurant.png',
                onTab: () {
                  Navigator.pushNamed(context, AppRoute.helloinformation);
                }),
            _customButton(
                context: context,
                color: Colors.green.shade100,
                name: 'FREGO',
                image: 'assets/image/frego.png',
                onTab: () {
                  Navigator.pushNamed(context, AppRoute.fregoinformation);
                }),
            _customButton(
                context: context,
                color: Colors.green.shade100,
                name: 'Food Zone',
                image: 'assets/image/food_zone.png',
                onTab: () {
                  Navigator.pushNamed(context, AppRoute.foodzoneinformation);
                }),
          ]),
        ));
  }
}

Widget _customButton({
  @required BuildContext? context,
  @required Color? color,
  @required String? name,
  @required String? image,
  @required VoidCallback? onTab,
}) {
  return InkWell(
    onTap: onTab!,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      height: 150,
      width: double.infinity,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 12,
            child: Image.asset(
              '$image',
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              '$name',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ),
  );
}
