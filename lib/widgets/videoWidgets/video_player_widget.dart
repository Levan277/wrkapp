import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../overlay_widget.dart';

class VideoPlayerWidget extends StatelessWidget {
   final VideoPlayerController controller;

  VideoPlayerWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context)  =>
      controller.value.isInitialized ? ClipRRect(
         child: Stack(
           children: [
             // 'assets/images/audiopic.jpg'
             Container(child: Image.asset('assets/images/audiopic.jpg'),),
             Container(child: buildVideo(),),
             Text('Levan',style: TextStyle(color: Colors.black,fontSize: 32),),
           ],
         ),

      )
          : Container(
        height: 100,
        child: Center(child: CircularProgressIndicator(),),
      );


  Widget buildVideo() => Stack(
      children: [
      buildVideoPlayer(),
        Positioned.fill(child: BasicOverlayWidget(controller: controller))
      ],
  );

  Widget buildVideoPlayer() => AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: VideoPlayer(controller));


}

