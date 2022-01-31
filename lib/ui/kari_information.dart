import 'package:flutter/material.dart';
import 'package:khadok_application_8/ui/route.dart';
import 'package:url_launcher/url_launcher.dart';

class KariInformation extends StatelessWidget {
  const KariInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String _url = 'https://flutter.dev';
    void _launchURL() async {
      if (await canLaunch(_url)) {
        await launch(_url);
      } else {
        throw 'could not launch $_url';
      }
    }

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
              child: Text('Al Helal Kari Hotel & Restaurant',
                  style: TextStyle(fontSize: 30)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Address:Masjid Rd, Brahmanbaria, Bangladesh',
                  style: TextStyle(fontSize: 30)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text('phone:+8801717472623', style: TextStyle(fontSize: 30)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoute.kariimageview);
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
                  Navigator.pushNamed(context, AppRoute.webviewpage);
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
