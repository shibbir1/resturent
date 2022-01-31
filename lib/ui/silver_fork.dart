import 'package:flutter/material.dart';
import 'package:khadok_application_8/ui/route.dart';

class SilverForkInformation extends StatelessWidget {
  const SilverForkInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url = '23.958856979723528, 91.10600339483878';
    String urlPhone = 'phone:+8801680800790';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text('Restaurant Information'),
      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Column(
          children: [
            Text('Silver Fork', style: TextStyle(fontSize: 30)),
            Center(
              child: Text(
                  'Address: Address:90,Mujaffor Tower(1st Floor) West Paikpara Brahmanbaria, 3400 Bangladesh',
                  style: TextStyle(fontSize: 30)),
            ),
            Text('phone: +8801680800790', style: TextStyle(fontSize: 30)),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoute.silverimageview);
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
                  Navigator.pushNamed(context, AppRoute.silverwebview);
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
