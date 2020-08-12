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
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Text(
                      name,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$score',
                          style: TextStyle(
                            fontSize: 16,
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
          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Expanded(
          //       flex: 3,
          //       child: Row(
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 8.0),
          //             child: Row(
          //               children: [
          //                 Icon(
          //                   type == hospital_ranking
          //                       ? Icons.local_hospital
          //                       : Icons.person,
          //                   color: isOneOfThree ? Colors.yellow : Colors.blue,
          //                 ),
          //                 SizedBox(
          //                   width: 5,
          //                 ),
          //                 Text('${index + 1} º'),
          //               ],
          //             ),
          //           ),
          //           SizedBox(
          //             width: 15,
          //           ),
          //           Row(
          //             children: [
          //               Wrap(
          //                 children: [
          //                   Text(
          //                     name,
          //                     //textAlign: TextAlign.start,
          //                   ),
          //                 ],
          //               ),
          //             ],
          //           ),
          //         ],
          //       ),
          //     ),
          //     Expanded(
          //       flex: 1,
          //       child: Text(
          //         '$score pontos',
          //         style: TextStyle(
          //           fontWeight:
          //               isOneOfThree ? FontWeight.bold : FontWeight.normal,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
