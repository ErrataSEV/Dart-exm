import 'package:flutter/material.dart';

class ContadorPagePlus extends StatefulWidget {

  @override
  createState() {
    return _ContadorPagePlus();
  }

}

class _ContadorPagePlus extends State<ContadorPagePlus>{

  final _styletxt = new TextStyle(fontSize: 30.0);
  int _contador = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicación Stateful+'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks', style: _styletxt),
            Text('$_contador', style: _styletxt),
          ],
        ),
      ),
      floatingActionButton: _createButtons(),

    );
  }

  Widget _createButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
          onPressed: _reset,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox(width: 0)),
        FloatingActionButton(
          onPressed: _add,
          child: Icon(Icons.add),
        ),
        SizedBox( width: 5.0),
        FloatingActionButton(
          onPressed: _sub,
          child: Icon(Icons.remove),
        ),
      ],
    );
  }

  void _add(){
    _contador++;
    setState((){});
  }

  void _sub(){
    setState(() => _contador--);
  }

  void _reset(){
    setState(() => _contador = 0);
  }

}
