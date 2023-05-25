import 'package:flutter/material.dart';
import 'package:toktik_app/domain/entities/video_post.dart';
import 'package:toktik_app/presentation/widgets/shared/video_button.dart';
import 'package:toktik_app/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key,
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final videoPost = videos[index];
        return Stack(
          children: [
            // Video player + gradiente
            // Se debe especificar el tamaño que ocupara
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              ),
            ),
            // Botones
            Positioned(
              right: 20,
              bottom: 40,
              child: VideoButtons(video: videoPost)
            )
          ],
        );
      },
    );
  }
}