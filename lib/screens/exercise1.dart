import 'package:baraeim/models/ex_model.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Exercise1 extends StatefulWidget {
  const Exercise1({super.key,required this.exModel});
  final ExModel exModel;

  @override
  _Exercise1State createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.exModel.videoPath);
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _playPauseVideo() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 320.0,
            floating: true,
            pinned: true,
            title: const Padding(
              padding: EdgeInsets.only(left: 64, right: 64, top: 23),
              child: Text(
                'Daily Exercise',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1E1E1E),
                ),
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: 36, right: 4, top: 20, bottom: 20),
              child: IconButton(
                icon: const Icon(Icons.arrow_back,color: Colors.black,),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(''),
              background: FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        ),
                        IconButton(
                          icon: Icon(

                            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                            size: 50,
                            color: Colors.white,
                          ),
                          onPressed: _playPauseVideo,
                        ),
                      ],
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 34, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.exModel.title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFEC407A),
                        ),
                      ),
                      const Spacer(),

                      Padding(
                        padding: const EdgeInsets.only(right: 40.0),
                        child: Image.asset(
                          height: 24,
                          width: 24,
                          "assets/Iconsave.png",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    child: Text(
                      widget.exModel.longDes,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8C8A8A),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}