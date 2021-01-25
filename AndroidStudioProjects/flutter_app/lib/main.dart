import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}
class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("My app"),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(20.0),
                child: Image.asset('assets/sherman.png',
                  height: 200.0,
                  width: 500.0,),
            ),
            Center(
              child: Icon(
                Icons.airport_shuttle,
                color: Colors.amber,
              ),
            ),
            Center(
              // padding: EdgeInsets.all(10.0),
              // margin: EdgeInsets.all(20.0),
              child: Text('Demonstrating the use on column, '
                  'container, padding, image, floatingActionButton, '
                  'icons, fittedBox below',
                textAlign: TextAlign.center,
              ),
            ),
            FittedBox(
              child: ColorFiltered(
                child: Image.asset('assets/sherman.png'),
                colorFilter: ColorFilter.mode(Colors.grey, BlendMode.color),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('click'),
          backgroundColor: Colors.red[700],
        ),
      );
    }
  }


