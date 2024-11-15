import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: display(),
    );
  }
}

class display extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.orange,
        title:Text('My Profile'),
        actions: [
          IconButton(
            icon:Icon(Icons.add),
            onPressed:(){},
          ),
          IconButton(
            icon:Icon(Icons.settings),
            onPressed:(){},
          ),
          IconButton(
            icon:Icon(Icons.call),
            onPressed:(){},
          ),],
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          ProfileSection(
            icon:Icons.icecream,
            text:'Ice cream is very delicious right?',
          ),
          SizedBox(height:40),
          ProfileSection(
            icon:Icons.code,
            text:'   Programming is not boring if you love it',
          ),
          SizedBox(height: 40),
          ProfileSection(
            icon:Icons.egg,
            text:"",
          ),
        ],),);
  }
}
class ProfileSection extends StatelessWidget {
  final IconData icon;
  final String text;
  ProfileSection({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        CircleAvatar(
          backgroundColor: Colors.purple[50],
          radius:80,
          child:Icon(
            icon,
            color:Colors.deepPurple,
            size:80,
          ),
        ),
        SizedBox(height:15),
        Text(
          text,
          textAlign:TextAlign.center,
          style: TextStyle(fontSize:16, fontWeight:FontWeight.bold),
        ),],);
  }
}
