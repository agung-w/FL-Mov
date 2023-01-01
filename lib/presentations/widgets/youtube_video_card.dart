import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoCard extends StatefulWidget {
  final String videoKey;
  final bool? isFirst;
  final bool? isLast;
  const YoutubeVideoCard(
      {super.key, required this.videoKey, this.isFirst, this.isLast});

  @override
  State<YoutubeVideoCard> createState() => _YoutubeVideoCardState();
}

class _YoutubeVideoCardState extends State<YoutubeVideoCard> {
  late YoutubePlayerController _youtubeController;
  @override
  void initState() {
    _youtubeController = YoutubePlayerController(
      initialVideoId: widget.videoKey,
      flags: const YoutubePlayerFlags(
          hideControls: true,
          disableDragSeek: true,
          autoPlay: false,
          enableCaption: false,
          mute: true),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog(
          useRootNavigator: true,
          barrierColor: Colors.black,
          context: context,
          barrierDismissible: false,
          builder: (builder) => Stack(
                children: [
                  Positioned(
                      top: 25,
                      left: 25,
                      child: GestureDetector(
                        child: const Icon(Icons.close, color: Colors.white),
                        onTap: () {
                          Navigator.pop(builder);
                        },
                      )),
                  YoutubeVideoPlayer(
                      videoKey: widget.videoKey, context: builder),
                ],
              )),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        margin: EdgeInsets.only(
            left: widget.isFirst == true ? 16 : 8,
            right: widget.isLast == true ? 16 : 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: YoutubePlayer(
            controller: _youtubeController,
          ),
        ),
      ),
    );
  }
}

class YoutubeVideoPlayer extends StatefulWidget {
  final String videoKey;

  final BuildContext context;

  const YoutubeVideoPlayer(
      {super.key, required this.videoKey, required this.context});

  @override
  State<YoutubeVideoPlayer> createState() => _YoutubeVideoPlayerState();
}

class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
  late YoutubePlayerController _youtubeController;
  @override
  void initState() {
    _youtubeController = YoutubePlayerController(
      initialVideoId: widget.videoKey,
      flags: const YoutubePlayerFlags(
        controlsVisibleAtStart: true,
        autoPlay: true,
        loop: false,
      ),
    );
    super.initState();
  }

  bool isFullScreen = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemChrome.setPreferredOrientations(DeviceOrientation.values);
        Navigator.pop(widget.context);
        return false;
      },
      child: YoutubePlayerBuilder(
        onEnterFullScreen: () => setState(() {
          isFullScreen = true;
        }),
        onExitFullScreen: () => setState(() {
          isFullScreen = false;
        }),
        player: YoutubePlayer(
          controller: _youtubeController,
          topActions: isFullScreen == true
              ? [
                  GestureDetector(
                    child: const Icon(Icons.close, color: Colors.white),
                    onTap: () {
                      SystemChrome.setPreferredOrientations(
                          DeviceOrientation.values);
                      Navigator.pop(widget.context);
                    },
                  )
                ]
              : null,
          bottomActions: <Widget>[
            CurrentPosition(),
            const SizedBox(width: 8.0),
            ProgressBar(isExpanded: true),
            RemainingDuration(),
            FullScreenButton()
          ],
          aspectRatio: 1.8,
          progressIndicatorColor: Colors.white,
        ),
        builder: (context, player) {
          return Center(child: player);
        },
      ),
    );
  }
}
