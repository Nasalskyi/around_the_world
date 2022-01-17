import 'package:around_the_world/models/itinerary_old.dart';

class WPImage{
  int id;
  String date;
  DateTime dateGMT;
  Guid guid;
  String modified;
  DateTime modifiedGMT;
  String slug;
  String status;
  String type;
  String link;
  Title title;
  int author;
  String commentStatus;
  String pingStatus;
  String template;
  List<String> meta;
  Description description;
  Caption caption;
  String altText;
  String mediaType;
  String mimeType;
  MediaDetails mediaDetails;
  String post;
  String sourceUrl;
  Links links;

  WPImage({
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
    required this.author,
    required this.commentStatus,
    required this.pingStatus,
    required this.template,
    required this.meta,
    required this.description,
    required this.caption,
    required this.altText,
    required this.mediaType,
    required this.mimeType,
    required this.mediaDetails,
    required this.post,
    required this.sourceUrl,
    required this.links
});


}

class Guid{
  String rendered;

  Guid({required this.rendered});

  factory Guid.fromJson(Map<String,dynamic> json){
    return Guid(rendered: json['rendered']);
  }
}

class Title{
  String rendered;

  Title({required this.rendered});

  factory Title.fromJson(Map<String,dynamic> json){
    return Title(rendered: json['rendered']);
  }
}

class Description {
  String rendered;
  Description({required this.rendered});

  factory Description.fromJson(Map<String,dynamic> json){
    return Description(rendered: json['rendered']);
  }
}

class Caption {

  String rendered;

  Caption({required this.rendered});

  factory Caption.fromJson(Map<String,dynamic> json){
    return Caption(rendered: json['rendered']);

  }
}

class MediaDetails{

  int width;
  int height;
  String file;
  Sizes sizes;
  ImageMeta imageMeta;

  MediaDetails({
    required this.width,
    required this.height,
    required this.file,
    required this.sizes,
    required this.imageMeta
});
}

class Sizes {
  Medium medium;
  Large large;
  Thumbnail thumbnail;
  MediumLarge mediumLarge;
  Fifty fifty;
  Twenty twenty;
  WPTravelThumbnail wpTravelThumbnail;
  WidgetThumbnail widgetThumbnail;
  WoocommerceThumbnail woocommerceThumbnail;
  WoocommerceSingle woocommerceSingle;
  WoocommerceGalleryThumbnail woocommerceGalleryThumbnail;
  ShopCatalog shopCatalog;
  ShopSingle shopSingle;
  ShopThumbnail shopThumbnail;
  Full full;

  Sizes({
    required this.medium,
    required this.large,
    required this.thumbnail,
    required this.mediumLarge,
    required this.fifty,
    required this.twenty,
    required this.wpTravelThumbnail,
    required this.widgetThumbnail,
    required this.woocommerceThumbnail,
    required this.woocommerceSingle,
    required this.woocommerceGalleryThumbnail,
    required this.shopCatalog,
    required this.shopSingle,
    required this.shopThumbnail,
    required this.full
});

}

class ImageMeta {
  String aperture;
  String credit;
  String camera;
  String caption;
  String createdTimestamp;
  String copyright;
  String focalLenght;
  String iso;
  String shutterSpeed;
  String title;
  String orientation;
  List<String> keywords;
  ImageMeta({
    required this.aperture,
    required this.credit,
    required this.camera,
    required this.caption,
    required this.createdTimestamp,
    required this.copyright,
    required this.focalLenght,
    required this.iso,
    required this.shutterSpeed,
    required this.title,
    required this.orientation,
    required this.keywords,
});

}

class Medium {
  String file;
  int width;
  int height;
  String mimeType;
  String sourceUrl;
  Medium({
    required this.file,
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
});

  factory Medium.fromJson(Map<String,dynamic> json){
    return Medium(
        file: json['file'],
        width: json['width'],
        height: json['height'],
        mimeType: json['mime_type'],
        sourceUrl: json['source_url']);
  }
}

class Large {
  String file;
  int width;
  int height;
  String mimeType;
  String sourceUrl;
  Large({
    required this.file,
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
  });

  factory Large.fromJson(Map<String,dynamic> json){
    return Large(
        file: json['file'],
        width: json['width'],
        height: json['height'],
        mimeType: json['mime_type'],
        sourceUrl: json['source_url']);
  }
}

class Thumbnail {
  String file;
  int width;
  int height;
  String mimeType;
  String sourceUrl;
  Thumbnail({
    required this.file,
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
  });

  factory Thumbnail.fromJson(Map<String,dynamic> json){
    return Thumbnail(
        file: json['file'],
        width: json['width'],
        height: json['height'],
        mimeType: json['mime_type'],
        sourceUrl: json['source_url']);
  }
}

class MediumLarge {
  String file;
  int width;
  int height;
  String mimeType;
  String sourceUrl;
  MediumLarge({
    required this.file,
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
  });

  factory MediumLarge.fromJson(Map<String,dynamic> json){
    return MediumLarge(
        file: json['file'],
        width: json['width'],
        height: json['height'],
        mimeType: json['mime_type'],
        sourceUrl: json['source_url']);
  }
}

class Fifty {
  String file;
  int width;
  int height;
  String mimeType;
  String sourceUrl;
  Fifty({
    required this.file,
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
  });

  factory Fifty.fromJson(Map<String,dynamic> json){
    return Fifty(
        file: json['file'],
        width: json['width'],
        height: json['height'],
        mimeType: json['mime_type'],
        sourceUrl: json['source_url']);
  }
}

class Twenty {
  String file;
  int width;
  int height;
  String mimeType;
  String sourceUrl;
  Twenty({
    required this.file,
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
  });

  factory Twenty.fromJson(Map<String,dynamic> json){
    return Twenty(
        file: json['file'],
        width: json['width'],
        height: json['height'],
        mimeType: json['mime_type'],
        sourceUrl: json['source_url']);
  }
}

class WPTravelThumbnail {
  String file;
  int width;
  int height;
  String mimeType;
  String sourceUrl;
  WPTravelThumbnail({
    required this.file,
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
  });

  factory WPTravelThumbnail.fromJson(Map<String,dynamic> json){
    return WPTravelThumbnail(
        file: json['file'],
        width: json['width'],
        height: json['height'],
        mimeType: json['mime_type'],
        sourceUrl: json['source_url']);
  }
}

class WidgetThumbnail {
  String file;
  int width;
  int height;
  String mimeType;
  String sourceUrl;
  WidgetThumbnail({
    required this.file,
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
  });

  factory WidgetThumbnail.fromJson(Map<String,dynamic> json){
    return WidgetThumbnail(
        file: json['file'],
        width: json['width'],
        height: json['height'],
        mimeType: json['mime_type'],
        sourceUrl: json['source_url']);
  }
}

class WoocommerceThumbnail {
  String file;
  int width;
  int height;
  bool uncropped;
  String mimeType;
  String sourceUrl;
  WoocommerceThumbnail({
    required this.file,
    required this.width,
    required this.height,
    required this.uncropped,
    required this.mimeType,
    required this.sourceUrl,
  });

  factory WoocommerceThumbnail.fromJson(Map<String,dynamic> json){
    return WoocommerceThumbnail(
        file: json['file'],
        width: json['width'],
        height: json['height'],
        uncropped: json['uncropped'],
        mimeType: json['mime_type'],
        sourceUrl: json['source_url']);
  }
}

class WoocommerceSingle {
  String file;
  int width;
  int height;
  String mimeType;
  String sourceUrl;
  WoocommerceSingle({
    required this.file,
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
  });

  factory WoocommerceSingle.fromJson(Map<String,dynamic> json){
    return WoocommerceSingle(
        file: json['file'],
        width: json['width'],
        height: json['height'],
        mimeType: json['mime_type'],
        sourceUrl: json['source_url']);
  }
}

class WoocommerceGalleryThumbnail {
  String file;
  int width;
  int height;
  String mimeType;
  String sourceUrl;
  WoocommerceGalleryThumbnail({
    required this.file,
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
  });

  factory WoocommerceGalleryThumbnail.fromJson(Map<String,dynamic> json){
    return WoocommerceGalleryThumbnail(
        file: json['file'],
        width: json['width'],
        height: json['height'],
        mimeType: json['mime_type'],
        sourceUrl: json['source_url']);
  }
}
class ShopCatalog {
  String file;
  int width;
  int height;
  String mimeType;
  String sourceUrl;
  ShopCatalog({
    required this.file,
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
  });

  factory ShopCatalog.fromJson(Map<String,dynamic> json){
    return ShopCatalog(
        file: json['file'],
        width: json['width'],
        height: json['height'],
        mimeType: json['mime_type'],
        sourceUrl: json['source_url']);
  }
}
class ShopSingle {
  String file;
  int width;
  int height;
  String mimeType;
  String sourceUrl;
  ShopSingle({
    required this.file,
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
  });

  factory ShopSingle.fromJson(Map<String,dynamic> json){
    return ShopSingle(
        file: json['file'],
        width: json['width'],
        height: json['height'],
        mimeType: json['mime_type'],
        sourceUrl: json['source_url']);
  }
}

class ShopThumbnail {
  String file;
  int width;
  int height;
  String mimeType;
  String sourceUrl;
  ShopThumbnail({
    required this.file,
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
  });

  factory ShopThumbnail.fromJson(Map<String,dynamic> json){
    return ShopThumbnail(
        file: json['file'],
        width: json['width'],
        height: json['height'],
        mimeType: json['mime_type'],
        sourceUrl: json['source_url']);
  }
}
class Full {
  String file;
  int width;
  int height;
  String mimeType;
  String sourceUrl;
  Full({
    required this.file,
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
  });

  factory Full.fromJson(Map<String,dynamic> json){
    return Full(
        file: json['file'],
        width: json['width'],
        height: json['height'],
        mimeType: json['mime_type'],
        sourceUrl: json['source_url']);
  }
}