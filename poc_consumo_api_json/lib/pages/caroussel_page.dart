import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/pages/widgets/default_scaffold.dart';
import 'package:poc_consumo_api_json/utils/constants.dart';

class CarousselModel {
  final String image;
  final String title;
  final String description;

  CarousselModel(this.image, this.title, this.description);
}

final List<CarousselModel> imgList = [
  CarousselModel(iconLevel1, "Oi equipe Safety4Me",
      "Isto é um teste do que conseguimos fazer com a nova tecnologia (Flutter)."),
  CarousselModel(iconLevel2, "Início",
      "Isso é o começo de um novo desafio (gostamos disso)."),
  CarousselModel(iconLevel3, "Confiança",
      "Estamos muito confiantes com as possibilidades da ferramenta."),
  CarousselModel(iconLevel4, "Vamos com calma",
      "Com tantas possibilidades temos que ter os pés no chão."),
  CarousselModel(iconLevel5, "O futuro é Flutter",
      "Temos certeza que escolhemos a tecnologia certa!"),
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
              items: getImageSliders(context),
              options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 6),
                  pauseAutoPlayInFiniteScroll: true,
                  enlargeCenterPage: true,
                  height: MediaQuery.of(context).size.height * 0.8,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.map((url) {
                  int index = imgList.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? Color.fromRGBO(0, 0, 0, 0.9)
                          : Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> getImageSliders(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return imgList
      .map((item) => Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                  elevation: 10,
                  shadowColor: pacificBlueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Container(
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      border: Border.all(color: Colors.transparent),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            item.title,
                            style: TextStyle(
                                color: pacificBlueColor, fontSize: 18),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            item.image,
                            height: size.height * 0.33,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Flexible(
                            child: Text(
                              item.description,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: pacificBlueColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )

          /*Container(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: size.height * 0.8,
                decoration: BoxDecoration(
                  border: Border.all(color: pacificBlueColor),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.transparent,
                ),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        item.image,
                        width: MediaQuery.of(context).size.width / 3,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(child: Text(item.title)),
                    Expanded(child: Text(item.description))
                  ],
                ),
              ),

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
        ),*/
          )
      .toList();
}
