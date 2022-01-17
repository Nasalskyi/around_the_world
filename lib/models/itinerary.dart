class Itinerary {
  int id;
  String status;
  String wpTravelStartDate;
  String wpTravelEndDate;
  String title;
  String content;
  FeaturedImage? featuredImage;
  String wpTravelPrice;
  String wpTravelGroupSize;
  String wpTravelTripInclude;
  String wpTravelTripExclude;
  String wpTravelOutline;
  List<WPTravelTripItineraryData>? wpTravelTripItineraryData;
  List<String>? wpTravelItineraryGalleryIds;
  String wpTravelEnableSale;
  String wpTravelSalePrice;
  List<String>? wpTravelFaqQuestion;
  List<String>? wpTravelFaqAnswer;


  Itinerary({
    required this.id,
    required this.status,
    required this.wpTravelStartDate,
    required this.wpTravelEndDate,
    required this.title,
    required this.content,
    required this.featuredImage,
    required this.wpTravelPrice,
    required this.wpTravelGroupSize,
    required this.wpTravelTripInclude,
    required this.wpTravelTripExclude,
    required this.wpTravelOutline,
    required this.wpTravelTripItineraryData,
    required this.wpTravelItineraryGalleryIds,
    required this.wpTravelEnableSale,
    required this.wpTravelSalePrice,
    required this.wpTravelFaqQuestion,
    required this.wpTravelFaqAnswer
  });

  factory Itinerary.fromJson(Map<String, dynamic> json){
    return Itinerary(
        id: json['id'] == null ? null : json['id'],
        status: json['status'] == null ? null : json['status'],
        wpTravelStartDate: json['wp_travel_start_date'] == null ? null : json['wp_travel_start_date'],
        wpTravelEndDate: json['wp_travel_end_date'] == null ? null : json['wp_travel_end_date'],
        title: json['title'] == null ? null : json['title'],
        content: json['content'] == null ? null : json['content'],
        featuredImage: json['featured_image'] == null ? null : FeaturedImage.fromJson(json['featured_image']),
        wpTravelPrice: json['wp_travel_price'] == null ? null : json['wp_travel_price'],
        wpTravelGroupSize: json['wp_travel_group_size'] == null ? null : json['wp_travel_group_size'],
        wpTravelTripInclude: json['wp_travel_trip_include'] == null ? null : json['wp_travel_trip_include'],
        wpTravelTripExclude: json['wp_travel_trip_exclude'] == null ? null : json['wp_travel_trip_exclude'],
        wpTravelOutline: json['wp_travel_outline'] == null ? null : json['wp_travel_outline'],
        wpTravelTripItineraryData: json['wp_travel_trip_itinerary_data'] == "" ? null : List<WPTravelTripItineraryData>.from(
            json['wp_travel_trip_itinerary_data'].map(
                (i)=>WPTravelTripItineraryData.fromJson(i)
            ).toList()),
        wpTravelItineraryGalleryIds: json['wp_travel_itinerary_gallery_ids'] == null ? null : List<String>.from(json['wp_travel_itinerary_gallery_ids']),
        wpTravelEnableSale: json['wp_travel_enable_sale'] == null ? null : json['wp_travel_enable_sale'],
        wpTravelSalePrice: json['wp_travel_sale_price'] == null ? null : json['wp_travel_sale_price'],
        wpTravelFaqQuestion: json['wp_travel_faq_question'] == null ? null : List<String>.from(json['wp_travel_faq_question']),
        wpTravelFaqAnswer: json['wp_travel_faq_answer'] == null ? null : List<String>.from(json['wp_travel_faq_answer'])
    );
  }

}
class FeaturedImage {
  int id;
  String url;
  String alt;

  FeaturedImage({
    required this.id,
    required this.url,
    required this.alt
  });

  factory FeaturedImage.fromJson(Map<String, dynamic> json){
    return FeaturedImage(
        id: json['id'] == null ? null : json['id'],
        url: json['url'] == null ? null : json['url'],
        alt: json['alt'] == null ? null : json['alt']
    );
  }

}

class WPTravelTripItineraryData {
  String label;
  String title;
  String date;
  String time;
  String desc;
  WPTravelTripItineraryData({
    required this.label,
    required this.title,
    required this.date,
    required this.time,
    required this.desc
});
  factory WPTravelTripItineraryData.fromJson(Map<String, dynamic> json){
    return WPTravelTripItineraryData(
        label: json['label'],
        title: json['title'],
        date: json['date'],
        time: json['time'],
        desc: json['desc']
    );
  }
}