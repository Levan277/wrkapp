import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:wrkapp/widgets/videoWidgets/video_player_widget.dart';

class AssetPlayerWidget extends StatefulWidget {
  final String asset;
   final String description;
   AssetPlayerWidget({Key? key, required this.asset, required this.description}) : super(key: key);

  @override
  _AssetPlayerWidgetState createState() => _AssetPlayerWidgetState();
}

class _AssetPlayerWidgetState extends State<AssetPlayerWidget> {
  // final asset = 'assets/u1_sec1_colonization.mp3';

  late VideoPlayerController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = VideoPlayerController.asset(widget.asset)
    ..addListener(() => setState(() {}))
        ..setLooping(false)
        ..initialize().then((value) => controller.pause());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final isMuted = controller.value.volume == 0;

    return Column(
      children: [
        if(controller.value.isInitialized)
        Container(child: Text(widget.description,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),),
        VideoPlayerWidget(controller: controller),
        const SizedBox(height: 32,),
      ],
    );
  }
}
