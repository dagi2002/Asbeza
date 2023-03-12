import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:asbeza/screens/history.dart';
import 'package:asbeza/screens/profile.dart';
import 'package:asbeza/screens/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/test_bloc.dart';

void main(){
  runApp(const Myapp());
  
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TestBloc(),
      child: MaterialApp(
      title:  "Asbeza",
      initialRoute: "/",
      routes: {
        "/": (context)=> HomePage(),
    "/history": (context)=> HistoryPage(),
    "/profile": (context)=> ProfilePage()

      },
      ));

  }
  }
