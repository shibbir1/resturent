import 'package:flutter/material.dart';
import 'package:khadok_application_8/ui/route.dart';

class InformationBangla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bangla Restaurant'),
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
                name: 'The Jhumur Hotel & Restaurant',
                image: 'assets/image/jomor_hotel.png',
                onTab: () {
                  Navigator.pushNamed(context, AppRoute.restaurantinformation);
                }),
            _customButton(
                context: context,
                color: Colors.green.shade100,
                name: 'Al Helal Kari Hotel & Restaurant',
                image: 'assets/image/kari_hotel.png',
                onTab: () {
                  Navigator.pushNamed(context, AppRoute.kiariinformation);
                }),
            _customButton(
                context: context,
                color: Colors.green.shade100,
                name: 'Radhuni Hotel And Restaurent',
                image: 'assets/image/radhoni_hotel.png',
                onTab: () {
                  Navigator.pushNamed(context, AppRoute.raduniinformation);
                }),
            _customButton(
                context: context,
                color: Colors.green.shade100,
                name: 'Green Chilli Restaurant and Party Centre',
                image: 'assets/image/green_chilli.png',
                onTab: () {
                  Navigator.pushNamed(context, AppRoute.geenciliinformation);
                }),
            _customButton(
                context: context,
                color: Colors.green.shade100,
                name: 'Hotel Noumi & chinese restaurant',
                image: 'assets/image/hotel_noumi.png',
                onTab: () {
                  Navigator.pushNamed(context, AppRoute.noumiinformation);
                }),
            _customButton(
                context: context,
                color: Colors.green.shade100,
                name: 'Cafe Nobabi Vhoj Restaurant',
                image: 'assets/image/cafe_nobabi.png',
                onTab: () {
                  Navigator.pushNamed(context, AppRoute.nobabiinformation);
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
