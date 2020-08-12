import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/utils/constants.dart';

class ItemRankingWidget extends StatelessWidget {
  final String type;
  final BuildContext context;
  final String name;
  final int score;
  final int index;

  const ItemRankingWidget(
      {Key key,
      @required this.context,
      @required this.index,
      @required this.name,
      @required this.score,
      @required this.type})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool isOneOfThree = index <= 2;
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: pacificBlueColor, width: 1),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        color: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 10,
        splashColor: Colors.transparent,
        onPressed: () {},
        child: DefaultTextStyle(
          style: TextStyle(
            fontWeight: isOneOfThree ? FontWeight.bold : FontWeight.normal,
            color: Colors.black,
            fontSize: 18,
          ),
          child: Container(
            color: Colors.white60,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          type == hospital_ranking
                              ? Icons.local_hospital
                              : Icons.person,
                          color: isOneOfThree ? Colors.yellow : Colors.blue,
                          size: 24,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '${index + 1} º',
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Text(
                      name,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight:
                          isOneOfThree ? FontWeight.bold : FontWeight.normal,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$score',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Text('pontos'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
