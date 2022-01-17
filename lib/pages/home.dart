import 'dart:convert';

import 'package:around_the_world/feature/itinerary_list_presenter.dart';
import 'package:around_the_world/models/itinerary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:around_the_world/feature/drawer.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late ItineraryListPresenter _itineraryListPresenter;
  List<Itinerary> itineraries = <Itinerary>[];
@override
  void initState() => _itineraryListPresenter = ItineraryListPresenter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Наши поездки'),
        centerTitle: true,

      ),
      body: _createBodyView(),
      drawer: const CustomDrawer(),
    );
  }

  Widget _createBodyView() {
    return FutureBuilder<List<Itinerary>>(
        future: _itineraryListPresenter.fetchItineraries(http.Client()),
        builder: (context, snapshots) {
          if (snapshots.hasError) {
            print(snapshots.error);
            return const Center(
              child: Text('An error has occured!'),
            );
          } else if (snapshots.hasData) {
            return ItinerariesList(itineraries:  snapshots.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}

class ItinerariesList extends StatelessWidget {
  const ItinerariesList({Key? key, required this.itineraries}) : super(key: key);

  final List<Itinerary> itineraries;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: itineraries.length,
        padding: const EdgeInsets.all(5),
        itemBuilder: (context,index) {
        return Container(
          height: 200,
          child: Row(
            children: [Image(image: NetworkImage(itineraries[index].featuredImage!.url)),
              Flexible(child: Text(itineraries[index].title)),
          ]
          )
        );
    });
  }

}
  



