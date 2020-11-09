import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(VideoPlayerApp());

class VideoPlayerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Player Demo',
      theme: new ThemeData(scaffoldBackgroundColor: Colors.blueGrey),
      home: SamplePlayer(),
    );
  }
}

class SamplePlayer extends StatefulWidget {
  SamplePlayer({Key key}) : super(key: key);

  @override
  _SamplePlayerState createState() => _SamplePlayerState();
}

class _SamplePlayerState extends State<SamplePlayer> {
  VideoPlayerController _controller;
  bool _isPlaying = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'VR project',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink[800],
      ),
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          Card(
            elevation: 20.0,
            margin: EdgeInsets.all(4.0),
            child: FlickVideoPlayer(
              flickManager: FlickManager(
                autoPlay: false,
                videoPlayerController: VideoPlayerController.network(
                    'https://storage.googleapis.com/fast-academy-281104.appspot.com/sample-mp4-file.mp4'),
              ),
            ),
          ),
          Divider(),
          Card(
            elevation: 20.0,
            margin: EdgeInsets.all(4.0),
            child: FlickVideoPlayer(
              flickManager: FlickManager(
                autoPlay: false,
                videoPlayerController: VideoPlayerController.network(
                    'https://storage.googleapis.com/fast-academy-281104.appspot.com/test-video17.mp4'),
              ),
            ),
          ),
          Divider(),
          Card(
            elevation: 20.0,
            margin: EdgeInsets.all(4.0),
            child: FlickVideoPlayer(
              flickManager: FlickManager(
                autoPlay: false,
                videoPlayerController: VideoPlayerController.network(
                    'https://storage.googleapis.com/fast-academy-281104.appspot.com/test-video18.mp4'),
              ),
            ),
          ),
          Divider(),
          Card(
            elevation: 20.0,
            margin: EdgeInsets.all(4.0),
            child: FlickVideoPlayer(
              flickManager: FlickManager(
                autoPlay: false,
                videoPlayerController: VideoPlayerController.network(
                    'https://storage.googleapis.com/fast-academy-281104.appspot.com/virtual%20reality.mp4'),
              ),
            ),
          ),
          Divider(),
          Card(
            elevation: 20.0,
            margin: EdgeInsets.all(4.0),
            child: FlickVideoPlayer(
              flickManager: FlickManager(
                autoPlay: false,
                videoPlayerController: VideoPlayerController.network(
                    'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4'),
              ),
            ),
          ),
          Divider(),
          Card(
            elevation: 20.0,
            margin: EdgeInsets.all(4.0),
            child: FlickVideoPlayer(
              flickManager: FlickManager(
                autoPlay: false,
                videoPlayerController: VideoPlayerController.network(
                    'https://storage.googleapis.com/fast-academy-281104.appspot.com/virtual%20reality.mp4'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
