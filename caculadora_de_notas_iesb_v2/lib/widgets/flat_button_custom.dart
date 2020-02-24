import 'package:flutter/material.dart';

class FlatButtonCustom extends StatelessWidget {
  final String legenda;
  final Function apertado;
  FlatButtonCustom({this.legenda, this.apertado});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 15.0),
      child: FlatButton(
        /*color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),*/
        onPressed: apertado,
        child: Column(
          children: <Widget>[
            Text(
              legenda,
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
              height: 5.0,
              thickness: 1.0,
            )
          ],
        ),
      ),
    );
  }
}
