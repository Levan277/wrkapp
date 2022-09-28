

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'neu_box_widget.dart';
import 'package:audioplayers/audioplayers.dart';

class WhiteSupremacyAudioT extends StatefulWidget {
  const WhiteSupremacyAudioT({Key? key}) : super(key: key);

  @override
  State<WhiteSupremacyAudioT> createState() => _WhiteSupremacyAudioTState();
}

class _WhiteSupremacyAudioTState extends State<WhiteSupremacyAudioT> {
  final audioPlayer  = AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool isPlaying = false;

  @override
  void initState() {
    // TODO: implement initState
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
    audioPlayer.setReleaseMode(ReleaseMode.stop);
    //load audio from assets

    final player = AudioCache(prefix: 'assets/');
    final url = await player.load('u1_sec1_white_supremacy.mp3');
    audioPlayer.setSourceUrl(url.toString());
    audioPlayer.pause();
  }

  @override
  void dispose() {
    // TODO: implement dispose
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(child: Icon(Icons.arrow_back)),
                  ),
                  Text('White Supremacy Example'),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(child: Icon(Icons.menu)),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // cover art, artist name, song name
              NeuBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child:  Image.asset('assets/images/audiopic.jpg',width: double.infinity,height: 180, ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              const SizedBox(height: 6),

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
                        child: GestureDetector(
                          onTap: () async{
                            if(isPlaying==true){
                              await audioPlayer.pause();
                            }
                            else{
                              await audioPlayer.resume();
                            }
                          },
                          child: NeuBox(
                              child: IconButton(
                                icon: Icon(isPlaying?Icons.pause:Icons.play_arrow),
                                iconSize: 32,
                                onPressed: () async{
                                  if(isPlaying==true){
                                    await audioPlayer.pause();
                                  }
                                  else{
                                    await audioPlayer.resume();
                                  }
                                },

                              )),
                        ),
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