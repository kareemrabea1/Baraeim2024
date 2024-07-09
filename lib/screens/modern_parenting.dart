import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ModernParenting extends StatefulWidget {
  const ModernParenting({super.key});

  @override
  State<ModernParenting> createState() => _ModernParentingState();
}

class _ModernParentingState extends State<ModernParenting> {
  late VideoPlayerController _controller1;
  late VideoPlayerController _controller2;
  late VideoPlayerController _controller3;
  late VideoPlayerController _controller4;
  late VideoPlayerController _controller5;
  late VideoPlayerController _controller6;
  late VideoPlayerController _controller7;
  late VideoPlayerController _controller8;
  late VideoPlayerController _controller9;
  late VideoPlayerController _controller10;

  bool _showPlayButton1 = true;
  bool _showPlayButton2 = true;
  bool _showPlayButton3 = true;
  bool _showPlayButton4 = true;
  bool _showPlayButton5 = true;
  bool _showPlayButton6 = true;
  bool _showPlayButton7 = true;
  bool _showPlayButton8 = true;
  bool _showPlayButton9 = true;
  bool _showPlayButton10 = true;

  @override
  void initState() {
    super.initState();
    _controller1 = VideoPlayerController.asset('assets/video/video_modern_parenting.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
    _controller2 = VideoPlayerController.asset('assets/video/video_modern_parenting2.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
    _controller3 = VideoPlayerController.asset('assets/video/video_modern_parenting1.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
    _controller4 = VideoPlayerController.asset('assets/video/video_modern_parenting3.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
    _controller5 = VideoPlayerController.asset('assets/video/video_modern_parenting4.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
    _controller6 = VideoPlayerController.asset('assets/video/special1.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
    _controller7 = VideoPlayerController.asset('assets/video/special2.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
    _controller8 = VideoPlayerController.asset('assets/video/special3.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
    _controller9 = VideoPlayerController.asset('assets/video/special4.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
    _controller10 = VideoPlayerController.asset('assets/video/special5.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    _controller6.dispose();
    _controller7.dispose();
    _controller8.dispose();
    _controller9.dispose();
    _controller10.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const int tabsCount = 2;

    return DefaultTabController(
      initialIndex: 1,
      length: tabsCount,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Padding(
            padding: EdgeInsets.only(
              left: 64,
              right: 60,
              top: 23,
            ),
            child: Text(
              'Modern parenting',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF1E1E1E),
              ),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 36, right: 4, top: 20, bottom: 20),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
          bottom: const TabBar(
            labelColor: Color(0xFFF687B3),
            indicatorColor: Color(0xFFF687B3),
            unselectedLabelColor: Color(0xFF111111),
            tabs: <Widget>[
              Tab(
                text: 'Modern parenting',
              ),
              Tab(
                text: 'People with special',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              padding: const EdgeInsets.only(top: 36, right: 33, left: 35),
              children: [
                _buildVideoPlayer(_controller1, 'How can you express love to a little child', 'Express your love to him through kisses and hugs.', _showPlayButton1, (val) {
                  setState(() {
                    _showPlayButton1 = val;
                  });
                }),
                const SizedBox(height: 31),
                _buildVideoPlayer(_controller2, 'How to get rid of your child is stubbornness', '''Via 4 steps 
1- Don't support your child's movement all the time 
2- There is a language of communication between you and your child
3- Ignore your child completely if he becomes stubborn again after understanding 
4- Do Adele with your child if he does not stubbornness give him a reward and if he stubbornness his people punish him according to the situation''', _showPlayButton2, (val) {
                  setState(() {
                    _showPlayButton2 = val;
                  });
                }),
                const SizedBox(height: 31),
                _buildVideoPlayer(_controller3, 'Positive and negative education ', 'This Video presents a situation to clarify the difference between positive and negative education.', _showPlayButton3, (val) {
                  setState(() {
                    _showPlayButton3 = val;
                  });
                }),
                const SizedBox(height: 31),
                _buildVideoPlayer(_controller4, 'how can you be strong and study your child', 'Try to use the fun teaching methods that have fun activities and means.', _showPlayButton4, (val) {
                  setState(() {
                    _showPlayButton4 = val;
                  });
                }),
                const SizedBox(height: 31),
                _buildVideoPlayer(_controller5, 'How can you make your child be social', 'How can you make your child be social.', _showPlayButton5, (val) {
                  setState(() {
                    _showPlayButton5 = val;
                  });
                }),
                const SizedBox(height: 31),
              ],
            ),
            ListView(
              padding: const EdgeInsets.only(top: 36, right: 33, left: 35),
              children: [
                _buildVideoPlayer(_controller6, 'Preparing your child for nursery', 'There is visual and social communication, and he knows how to communicate with others.', _showPlayButton6, (val) {
                  setState(() {
                    _showPlayButton6 = val;
                  });
                }),
                const SizedBox(height: 31),
                _buildVideoPlayer(_controller7, 'Early intervention with children with special needs', 'Early intervention helps in improving physical, cognitive, communication, social/emotional, and adaptive development.', _showPlayButton7, (val) {
                  setState(() {
                    _showPlayButton7 = val;
                  });
                }),
                const SizedBox(height: 31),
                _buildVideoPlayer(_controller8, 'How to develop your child is skills through games', 'By simplifying the game according to the age of your child.', _showPlayButton8, (val) {
                  setState(() {
                    _showPlayButton8 = val;
                  });
                }),
                const SizedBox(height: 31),
                _buildVideoPlayer(_controller9, 'Individual educational plan', 'How do I know that this is the appropriate and effective plan for your child.', _showPlayButton9, (val) {
                  setState(() {
                    _showPlayButton9 = val;
                  });
                }),
                const SizedBox(height: 31),
                _buildVideoPlayer(_controller10, 'Develop your child is skills', 'Through games and diagnosing situations through games.', _showPlayButton10, (val) {
                  setState(() {
                    _showPlayButton10 = val;
                  });
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoPlayer(VideoPlayerController controller, String title, String description, bool showPlayButton, Function(bool) onButtonStateChanged) {
    return GestureDetector(
      onTap: () {
        onButtonStateChanged(!showPlayButton);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: VideoPlayer(controller),
              ),
              if (showPlayButton)
                IconButton(
                  iconSize: 60,
                  icon: Icon(
                    controller.value.isPlaying ? Icons.pause_circle_outline : Icons.play_circle_outline,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      if (controller.value.isPlaying) {
                        controller.pause();
                      } else {
                        controller.play();
                      }
                    });
                    onButtonStateChanged(false);
                  },
                ),
            ],
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            description,
            style: const TextStyle(
              color: Color(0xFF8C8A8A),
              fontSize: 10,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
