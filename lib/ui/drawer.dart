import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Wrap(
        children: [
          DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Shibbir'),
                ],
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://scontent.fdac23-1.fna.fbcdn.net/v/t39.30808-6/258767253_446726383621661_5770566207258793787_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeHxlI9gZrlAhI3vFjgToRUZNL-rPoHOYRU0v6s-gc5hFZEgFbUB-tIOWBSjgsycdgoA9G_nPZln_N4XuhKa7BF3&_nc_ohc=rYI8rWi9kVYAX_CoZ5o&tn=DfoPmH6ZOOxM9zp8&_nc_ht=scontent.fdac23-1.fna&oh=00_AT_wz_COLT2PXqHo4TZsCWtrT5vGilzFW2BCkLUkJOVtmA&oe=61E90067')))),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('Hasan'),
          ),
          Divider(
            height: 2,
            thickness: 2,
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorite'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.movie),
            title: Text('Moveie'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
