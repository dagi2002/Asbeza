import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:asbeza/screens/history.dart';
import 'package:asbeza/screens/profile.dart';
import 'package:asbeza/screens/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/test_bloc.dart';

void main() {
  runApp(const MyApp());
  //SystemChrome.setEnabledSystemUIMode([SystemUiOverlay.bottom] as SystemUiMode);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => HomePage(),
          "/profile": (context) => ProfilePage(),
          "/cart": (context) => HistoryPage(),
        },
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
