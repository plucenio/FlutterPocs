import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/pages/widgets/default_scaffold.dart';
import 'package:poc_consumo_api_json/utils/constants.dart';

final List<String> imgList = [
  iconLevel1,
  iconLevel2,
  iconLevel3,
  iconLevel4,
  iconLevel5
];

class CarousselPage extends StatefulWidget {
  CarousselPage({Key key}) : super(key: key);

  @override
  _CarousselPageState createState() => _CarousselPageState();
}

class _CarousselPageState extends State<CarousselPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      titleWidget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home),
          SizedBox(
            width: 5,
          ),
          Text('Carrossel'),
        ],
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: imageSliders,
          ),
        ],
      )),
    );
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'Imagem número ${imgList.indexOf(item)}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
