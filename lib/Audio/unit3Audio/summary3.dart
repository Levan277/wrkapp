
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


import 'package:audioplayers/audioplayers.dart';

import '../neu_box_widget.dart';

class Summary3U3 extends StatefulWidget {
  const Summary3U3({Key? key}) : super(key: key);

  @override
  State<Summary3U3> createState() => _Summary3U3State();
}

class _Summary3U3State extends State<Summary3U3> {
  final audioPlayer  = AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool isPlaying = false;

  @override
  void initState() {

    super.initState();

    //load audio from the setAudio function
    setAudio();

    //Listen to states: playing,paused,stopped
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState((){
        isPlaying = state == PlayerState.playing;
      });
    });

    //Listen to audio duration
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState((){
        duration = newDuration;
      });
    });

    //Listen to audio position
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState((){
        position =newPosition;
      });
    });


  }

  Future setAudio() async{
    //WHEN COMPLETED REPEAT AUDIO
    audioPlayer.setReleaseMode(ReleaseMode.loop);
    //load audio from assets

    final player = AudioCache(prefix: 'assets/');
    final url = await player.load('u3_sec1_summary3.mp3');
    audioPlayer.setSourceUrl(url.toString());
  }

  @override
  void dispose() {

    super.dispose();
    audioPlayer.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 10),

              // back button and menu button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: const [
                  // SizedBox(
                  //   height: 60,
                  //   width: 60,
                  //   child: NeuBox(child: Icon(Icons.arrow_back)),
                  // ),
                  Flexible(child: Text('Summary PT:3 ',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
                  // SizedBox(
                  //   height: 60,
                  //   width: 60,
                  //   child: NeuBox(child: Icon(Icons.menu)),
                  // ),
                ],
              ),

              const SizedBox(height: 25),

              // cover art, artist name, song name
              NeuBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('assets/images/audiopic.jpg',width: double.infinity,height: 180,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                '',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 32,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // start time, shuffle button, repeat button, end time


              const SizedBox(height: 30),

              // linear bar
              Slider(
                  min: 0,
                  max: duration.inSeconds.toDouble(),
                  value: position.inSeconds.toDouble(),
                  onChanged:(value) async{
                    final position = Duration(seconds: value.toInt());
                    await audioPlayer.seek(position);

                    //play audio if paused
                    await audioPlayer.resume();
                  }),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(formatTime(position)),
                    Text(formatTime(duration - position)),


                  ],
                ),
              ),

              const SizedBox(height: 30),

              // previous song, pause play, skip next song
              SizedBox(
                height: 80,
                child: Row(
                  children:  [

                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: NeuBox(
                            child: IconButton(
                              icon: Icon(Icons.play_arrow),
                              iconSize: 32,
                              onPressed: () async{
                                if(isPlaying){
                                  await audioPlayer.pause();
                                }
                                else{
                                  await audioPlayer.resume();
                                }
                              },

                            )),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

String formatTime(Duration duration){
  String twoDigits(int n) => n.toString().padLeft(2,'0');
  final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));

  return [
    if(duration.inHours > 0)
      hours,
    minutes,
    seconds,

  ].join(':');
}