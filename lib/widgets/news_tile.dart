import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:url_launcher/url_launcher.dart';
// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: (){_onPressed(articleModel.link);},
          child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                articleModel.image??"assets/health.avif",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
  _onPressed (String link) async {
    //String url = "https://www.fluttercampus.com";
    Uri uri=Uri.parse(link);
    var urllaunchable = await canLaunchUrl(uri); //canLaunch is from url_launcher package
    if(urllaunchable){
      await launchUrl(uri,
          mode: LaunchMode.externalApplication); //launch is from url_launcher package to launch URL
    }else{
      print("URL can't be launched.");
    }}
}
