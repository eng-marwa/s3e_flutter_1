import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:s3e_flutter/image_manager.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //image assets
              Image.asset(
                ImageManager.image2,
                width: 200,
                errorBuilder: (context, error, stackTrace) => Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 120,
                  color: Colors.red,
                  padding: const EdgeInsets.all(8),
                  child: Text(error.toString()),
                ),
                opacity: const AlwaysStoppedAnimation(0.5),
              ),

              // const Image(image: AssetImage(ImageManager.image1))
              Image.network(
                  'https://images.pexels.com/photos/1034464/pexels-photo-1034464.jpeg',
                  loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return CircularProgressIndicator(
                    value: loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!,
                  );
                }
              }),
              // Image(
              //   image: NetworkImage(
              //       'https://images.pexels.com/photos/1034464/pexels-photo-1034464.jpeg'),
              // )
              const CircleAvatar(
                radius: 45,
                backgroundColor: Colors.yellow,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/1706974/pexels-photo-1706974.jpeg'),
              ),

              SvgPicture.network(
                'https://raw.githubusercontent.com/dnfield/flutter_svg/7d374d7107561cbd906d7c0ca26fef02cc01e7c8/example/assets/flutter_logo.svg',
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
