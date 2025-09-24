import 'package:bitaqwa_app/data/data_video.dart';
import 'package:bitaqwa_app/screens/video/detail_video_kajian.dart';
import 'package:bitaqwa_app/utils/colors.dart';
import 'package:flutter/material.dart';

class VideoKajianScreen extends StatelessWidget {
  const VideoKajianScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.primary,
        title: const Text(
          "Video Kajian",
          style: TextStyle(
            fontFamily: "PoppinsMedium",
            color: ColorApp.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: ColorApp.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailVideoKajian(title: videos[index]['title']!, ustadz: videos[index]['ustadz']!, account: videos[index]['account']!, url: videos[index]['url']!, description: videos[index]['description']!, thumbnail: videos[index]['thumbnail']!,);
              },));
            },
            child: Card(
              margin: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset(videos[index]['thumbnail']!, fit: BoxFit.cover,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(videos[index]['ustadz']!, style: const TextStyle(fontWeight: FontWeight.normal, color: ColorApp.primary),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(videos[index]['account']!, style: const TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(videos[index]['title']!, style: const TextStyle(fontWeight: FontWeight.w800, color: Colors.black, fontSize: 18),),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
