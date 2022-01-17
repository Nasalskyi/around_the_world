
class Itinerary {
  int id;
  DateTime date;
  DateTime dateGMT;
  Guid guid;
  String modified;
  String modifiedGMT;
  String slug;
  String status;
  String type;
  String link;
  Title title;
  Excerpt excerpt;
  int featuredMedia;
  String commentStatus;
  String pingStatus;
  String template;
  String price;
  String groupSize;
  String tripInclude;
  String tripExclude;
  String wpTravelOutline;
  String wpTravelStartDate;
  String wpTravelEndDate;
  Links links;


  Itinerary({
    required this.id,
    required this.date,
    required this.dateGMT,
    required this.guid,
    required this.modified,
    required this.modifiedGMT,
    required this.slug,
    required this.status,
    required this.type,
    required this.link,
    required this.title,
    required this.excerpt,
    required this.featuredMedia,
    required this.commentStatus,
    required this.pingStatus,
    required this.template,
    required this.price,
    required this.groupSize,
    required this.tripInclude,
    required this.tripExclude,
    required this.wpTravelOutline,
    required this.wpTravelStartDate,
    required this.wpTravelEndDate,
    required this.links
  });

  factory Itinerary.fromJson(Map<String, dynamic> json){
    return Itinerary(id: json['id'] as int,
        date: DateTime.parse(json['date']),
        dateGMT: DateTime.parse(json['date_gmt']),
        guid: Guid.fromJson(json['guid']),
        modified: json['modified'] as String,
        modifiedGMT: json['modified_gmt'] as String,
        slug: json['slug'] as String,
        status: json['status'] as String,
        type: json['type'] as String,
        link: json['link'] as String,
        title: Title.fromJson(json['title']),
        excerpt: Excerpt.fromJson(json['excerpt']),
        featuredMedia: json['featured_media'] as int,
        commentStatus: json['comment_status'] as String,
        pingStatus: json['ping_status'] as String,
        template: json['template'] as String,
        price: json['price'] as String,
        groupSize: json['group_size'],
        tripInclude: json['trip_include'],
        tripExclude: json['trip_exclude'],
        wpTravelOutline: json['wp_travel_outline'],
        wpTravelStartDate: json['wp_travel_start_date'],
        wpTravelEndDate: json['wp_travel_end_date'],
        links: Links.fromJson(json['_links']));
  }
}


class Guid {
  String rendered;

  Guid({required this.rendered});

  factory Guid.fromJson(Map<String, dynamic> json){
    return Guid(rendered: json['rendered'] as String);
  }


}
class Title {
  String rendered;

  Title({required this.rendered});

  factory Title.fromJson(Map<String, dynamic> json) {
    return Title(rendered: json['rendered'] as String);
  }

}
class Excerpt {
  String rendered;
  bool protected;

  Excerpt({required this.rendered, required this.protected });

  factory Excerpt.fromJson(Map<String, dynamic> json) {
    return Excerpt(rendered: json['rendered'] as String,
        protected: json['protected'] as bool);
  }

}
class Links {
  List<Self> self;
  List<Collection> collection;
  List<About> about;
  List<Replies> replies;
  List<WPFeaturedMedia> wpFeaturedMedia;
  List<WPAttachment> wpAttachment;
  List<Curies> curies;

  Links({
      required this.self,
      required this.collection,
      required this.about,
      required this.replies,
      required this.wpFeaturedMedia,
      required this.wpAttachment,
      required this.curies
  });

 factory Links.fromJson(Map<String, dynamic> json) {
   return Links(
       self: List<Self>.from(
           json['self'].map((i)=> Self.fromJson(i)).toList()
       ),
       collection: List<Collection>.from(
           json['collection'].map((i)=> Collection.fromJson(i)).toList()
       ),
       about: List<About>.from(
           json['about'].map((i)=> About.fromJson(i)).toList()
       ),
       replies: List<Replies>.from(
           json['replies'].map((i)=> Replies.fromJson(i)
           ).toList()),
       wpFeaturedMedia: List<WPFeaturedMedia>.from(
           json['wp:featuredmedia'].map((i)=> WPFeaturedMedia.fromJson(i)).toList()
       ),
       wpAttachment: List<WPAttachment>.from(
           json['wp:attachment'].map((i)=> WPAttachment.fromJson(i)).toList()
       ),
       curies: List<Curies>.from(
           json['curies'].map((i)=> Curies.fromJson(i)).toList()
       )
   );
 }
}
class Self{
  String href;

  Self({required this.href});

  factory Self.fromJson(Map<String, dynamic> json){
    return Self(href: json['href'] as String);
  }
}
class Collection{
  String href;

  Collection({required this.href});

 factory Collection.fromJson(Map<String, dynamic> json){
   return Collection(href: json['href'] as String);
 }

}

class About{
  String href;

  About({required this.href});

  factory About.fromJson(Map<String, dynamic> json) {
    return About(href: json['href'] as String);
  }

}

class Replies{
  bool embeddable;
  String href;

  Replies({required this.embeddable, required this.href});

  factory Replies.fromJson(Map<String, dynamic> json){
    return Replies(embeddable: json['embeddable'] as bool,
        href: json['href'] as String);
  }

}

class WPFeaturedMedia{
  bool embeddable;
  String href;

  WPFeaturedMedia({required this.embeddable, required this.href});

  factory WPFeaturedMedia.fromJson(Map<String, dynamic> json){
    return WPFeaturedMedia(embeddable: json['embeddable'] as bool,
        href: json['href'] as String);
  }

}

class WPAttachment{
  String href;

  WPAttachment({required this.href});

  factory WPAttachment.fromJson(Map<String, dynamic> json) {
    return WPAttachment(href: json['href'] as String);
  }

}

class Curies {
  String name;
  String href;
  bool templated;

  Curies({
   required this.name,
   required this.href,
   required this.templated
  });

  factory Curies.fromJson(Map<String, dynamic> json){
    return Curies(
        name: json['name'] as String,
        href: json['href'] as String,
        templated: json['templated'] as bool);
  }

}