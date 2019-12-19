import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState() {
    return _ContadorPageState();
  }
}

//El guíon bajo hace esa clase de tipo privada ya que solo se usa
//  para el statefulwidget
class _ContadorPageState extends State<ContadorPage>{
  int _contador = 0;
  final _styletxt = new TextStyle(fontSize: 25.0);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicacion Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Clicks', style: _styletxt),
            Text('$_contador', style: _styletxt),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _contador++;
          setState((){});
        },
        child: Icon(Icons.add),
      ),

    );
  }

}
