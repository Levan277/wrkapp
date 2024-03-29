import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';


class ChewieListItem extends StatefulWidget {

  final VideoPlayerController videoPlayerController;
  bool? looping = false;

  ChewieListItem({Key? key,required this.videoPlayerController,  this.looping}) : super(key: key);
  @override
  State<ChewieListItem> createState() => _ChewieListItemState();
}

class _ChewieListItemState extends State<ChewieListItem> {
    late ChewieController _chewieController;

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _chewieController = ChewieController(videoPlayerController: widget.videoPlayerController, aspectRatio: 16/9, autoInitialize: true, looping: widget.looping!,
    errorBuilder: (context,errorMessage){
      return Center(
        child: Text(
          errorMessage,
          style: GoogleFonts.montserrat(color: Colors.white),
        ),
      );
    }

    );
  }
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(8),
    child: Chewie(
      controller: _chewieController,
    ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}
