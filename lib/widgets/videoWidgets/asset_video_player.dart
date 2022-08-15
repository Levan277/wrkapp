import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:wrkapp/widgets/videoWidgets/video_player_widget.dart';


class AssetPlayerWidget extends StatefulWidget {
  const AssetPlayerWidget({Key? key}) : super(key: key);

  @override
  State<AssetPlayerWidget> createState() => _AssetPlayerWidgetState();
}

class _AssetPlayerWidgetState extends State<AssetPlayerWidget> {

  late VideoPlayerController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = VideoPlayerController.asset('assets/videos/cake.mp4')..addListener(() =>setState((){} ))..setLooping(true)..initialize().then((_) => controller.play());
  }

@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayerWidget(controller: controller);
  }
}
