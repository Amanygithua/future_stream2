import 'main.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
class future_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FUture_screen'),),
    body:
      StreamBuilder(
      stream: Stream.periodic(Duration(milliseconds: 500),(a){
        return a;
      }),
    builder:(context,Snapshot){
    if(Snapshot.hasData && Snapshot.data! == 10) {
      return Center(
        child: Text('Snapshot.data'),
      );
    }else if(Snapshot.hasError){
    return Center(
      child: Text(Snapshot.error.toString()),);
    }
    else {
    return  CircularProgressIndicator();
    }
      }));
}}