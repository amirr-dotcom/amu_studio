import 'package:amu_studios_website/gen/assets.gen.dart';
import 'package:amu_studios_website/model/option.dart';

class SocialHandlesRepository {

  static List<Option<String>> list=[
    Option<String>(
        title: "Youtube Account",
        subTitle: "We provide you regular update on what's happening in voice over industry through our account follow for  relevant post and videos.",
        extra: Assets.png.youtube.path,
      link: "https://www.youtube.com/channel/UCrg6pYvMMXBPD4VXuhqAzqw"
    ),
    Option<String>(
      title: "Instagram Account",
      subTitle: "We provide you regular update on what's happening in voice over industry through our account follow for  relevant post.",
      extra: Assets.png.instagram.path,
      link: "https://www.instagram.com/ahmadhusain85/?hl=en"
    ),
    Option<String>(
        title: "Facebook Account",
        subTitle: "We provide you regular update on what's happening in voice over industry through our account follow for  relevant post.",
        extra: Assets.png.facebook.path,
      link: "https://www.facebook.com/amustudios/"
    ),
  ];

}