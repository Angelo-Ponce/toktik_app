import 'package:toktik_app/domain/entities/video_post.dart';

abstract class VideoPostRepository {
  
  Future<List<VideoPost>> getFavouriteVideosByUser( String userID );

  Future<List<VideoPost>> getTrendingVideosByPage( int page );

}