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
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      titleWidget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.swap_horiz),
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
            items: imageSliders,
            options: CarouselOptions(
                autoPlay: true,
                pauseAutoPlayInFiniteScroll: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ],
      )),
    );
  }
}

final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: pacificBlueColor),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.transparent,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      item,
                      fit: BoxFit.scaleDown,
                    ),
                    Expanded(child: Text("Imagem")),
                    Expanded(child: Text("Descrição da imagem"))
                  ],
                ),
              )

              /*Stack(
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
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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
          ),*/
              ),
        ),
      ),
    )
    .toList();
