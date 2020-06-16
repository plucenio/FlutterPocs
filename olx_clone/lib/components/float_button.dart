import 'package:flutter/material.dart';

class FloatButtonWidget extends StatelessWidget {
  const FloatButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        child: Container(
          width: 160,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.orangeAccent[700],
            borderRadius: BorderRadius.circular(40)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(children: <Widget>[
                Icon(Icons.camera_alt, color: Colors.white),
                SizedBox(width: 7),
                Text("Anunciar agora", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
              ],)
            ],
          ),
        ),  
      ),
    );
  }
}