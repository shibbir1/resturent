import 'package:flutter/material.dart';
import 'package:khadok_application_8/ui/route.dart';

class NobabiInformation extends StatelessWidget {
  const NobabiInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              child: Text('Cafe Nobabi Vhoj Restaurant',
                  style: TextStyle(fontSize: 30)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Address	: Paurashava Court Road Brahmanbaria Bangladesh',
                  style: TextStyle(fontSize: 30)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('phone: +8801716-175597',
                  style: TextStyle(fontSize: 30)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoute.nobabiimageview);
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
                onTab: () {
                  Navigator.pushNamed(context, AppRoute.nobabiwebview);
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
