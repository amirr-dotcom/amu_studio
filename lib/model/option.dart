
class Option<T> {
  String? title;
  String? subTitle;
  T? extra;
  String? link;

  Option({this.title, this.subTitle, this.extra, this.link});

  Option.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subTitle = json['subTitle'];
    extra = json['image'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['subTitle'] = subTitle;
    data['image'] = extra;
    data['link'] = link;
    return data;
  }
}
