import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Image.network("https://a.espncdn.com/i/teamlogos/soccer/500/6273.png", width: 130, height: 150, fit: BoxFit.cover,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Vende-se camiseta do Grêmio ano 1995", softWrap: true, style: TextStyle(fontWeight: FontWeight.w400),),
                  Text("R\$ 5.000,00", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                  Text("13 de junho de 2020 Porto Alegre, RS", style: TextStyle(fontSize: 12, color: Colors.grey[600]), maxLines: 1)
              ],),
            ),
          )          
        ],
      ),
    );
  }
}