import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://fps.cdnpk.net/images/home/subhome-ai.webp'),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25))),
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 16.0, vertical: 30.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                Text(
                  'App Title',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w900),
                ),
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: SizedBox(
                height: 50,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      color: Colors.indigo,
                      width: 120,
                    ),
                    Container(
                      color: Colors.amber,
                      width: 120,
                    ),
                    Container(
                      color: Colors.pink,
                      width: 120,
                    ),
                    Container(
                      color: Colors.deepOrange,
                      width: 120,
                    ),
                    Container(
                      color: Colors.cyan,
                      width: 120,
                    ),
                    Container(
                      color: Colors.grey,
                      width: 120,
                    ),
                    Container(
                      color: Colors.teal,
                      width: 120,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(200);
}
