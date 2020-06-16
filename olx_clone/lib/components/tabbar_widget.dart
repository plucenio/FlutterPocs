import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key key}) : super(key: key);

_button(context, String text){
  return InkWell(
            child: Container(
              width: MediaQuery.of(context).size.width / 3,
              height: 47,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  right: BorderSide(
                    color: Colors.grey,
                    width: 0.5)
                )
              ),
              child: 
              Center(
                child: Text(text, 
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500
                  )
                )
              )
            ),
            onTap: (){}
  );
}

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 7,
      child: Row(
        children: <Widget>[
          _button(context, "DDD 51..."),
          _button(context, "Categorias"),
          _button(context, "Filtros")
        ]
      )
    );
  }
}