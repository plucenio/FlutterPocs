import 'package:flutter/material.dart';
import 'package:olx_clone/components/float_button.dart';
import 'package:olx_clone/components/item_list.dart';
import 'components/tabbar_widget.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.favorite_border), onPressed: (){})
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: <Widget>[
          TabBarWidget(),
          Expanded(child: 
            ListView.builder(
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) {
                return ItemListWidget();
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatButtonWidget(),
    );
  }
}