import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khadok_application_8/ui/home.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final List<String> imgList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7WPKqwSLsxOPBqskNtx2WKiAuibKAigVGpA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRTLiBbdLUf1PhG4EUNlmW96CjdxXxxD66NQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxzvYO5hJDVi6zfgJFLhPV0U1DemhBQlbzTw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYkVLpEEvJ9spc6WA3Mj8J70eSYwDRL6Dpfw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDgS1wfLN_tn5nE3oS9RJHZeFYmOiJp6kwcg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT8RFqUa3CQyH8F6Qju25zEDa9LT0wpW2ygg&usqp=CAU'
  ];
  int changeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(seconds: 2),
        autoPlayCurve: Curves.fastOutSlowIn,
        onPageChanged: (index, reason) {
          setState(() {
            changeIndex = index;
          });
        },
      ),
      items: imgList
          .map((e) => Container(
              margin: EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              child: Chip(label: Text('${changeIndex + 1}/${imgList.length}')),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                image: DecorationImage(
                  image: NetworkImage('$e'),
                  fit: BoxFit.fill,
                ),
              )))
          .toList(),
    );
  }
}
