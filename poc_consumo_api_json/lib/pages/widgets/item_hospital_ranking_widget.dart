import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/models/hospital.dart';

class ItemHospitalRankingWidget extends StatelessWidget {
  final BuildContext context;
  final Hospital hospital;
  final int index;

  const ItemHospitalRankingWidget(
      {Key key, this.context, this.hospital, this.index})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool isOneOfThree = index <= 2;
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.blue, width: 1),
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
        color: Colors.white,
        highlightColor: Colors.white,
        focusColor: Colors.white,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        splashColor: Colors.blue[900],
        onPressed: () {},
        child: DefaultTextStyle(
          style: TextStyle(
              fontWeight: isOneOfThree ? FontWeight.bold : FontWeight.normal,
              color: Colors.black),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.local_hospital,
                          color: isOneOfThree ? Colors.yellow : Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('${index + 1} º'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        '${hospital.name}',
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  '${hospital.score} pontos',
                  style: TextStyle(
                    fontWeight:
                        isOneOfThree ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
