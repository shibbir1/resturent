import 'package:flutter/material.dart';
import 'package:khadok_application_8/ui/route.dart';

class FoodZoneInformation extends StatelessWidget {
  const FoodZoneInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url = '23.966038, 91.1123798';
    String urlPhone = 'phone:+880 1967-295580';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text('Restaurant Information'),
      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Food Zone', style: TextStyle(fontSize: 30)),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(' College Para Rd, Brahmanbaria, BangladeshAddress',
                    style: TextStyle(fontSize: 30)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('phone:+880 1967-295580',
                  style: TextStyle(fontSize: 30)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoute.foodimageview);
              },
              child: Text(
                'Restaurant View',
                style: TextStyle(color: Colors.green, fontSize: 30),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.white),
            ),
            _customButton(
                context: context,
                color: Colors.white,
                name: 'Facebook',
                // image: image,
                onTab: () {
                  Navigator.pushNamed(context, AppRoute.foodwebview);
                })
          ],
        ),
      ),
    );
  }
}

Widget _customButton({
  @required BuildContext? context,
  @required Color? color,
  @required String? name,
  // @required String? image,
  @required VoidCallback? onTab,
}) {
  return InkWell(
    onTap: onTab!,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      height: 50,
      width: double.infinity,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Expanded(
          //   flex: 12,
          //   child: Image.asset(
          //     '$image',
          //     fit: BoxFit.fill,
          //   ),
          // ),
          Expanded(
            flex: 3,
            child: Text(
              '$name',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ),
  );
}
