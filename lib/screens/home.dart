import 'package:asbeza/bloc/test_event.dart';
import 'package:asbeza/bloc/test_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/test_bloc.dart';
import '../models/Asbeza.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TODO: Add state for cart and total
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assbeza'),
      ),
      body: BlocBuilder<TestBloc, TestState>(
        builder: (context, state) {
          if (state is TestInitialState) {
            return Center(
              child: ElevatedButton(

                onPressed: () {
                  BlocProvider.of<TestBloc>(context).add(
                      GetDataButtonPressed()
                  );
                },
                child: Text("Start"),
              ),
            );
          }
          if (state is TestLoadingState){
            return const Center(
            child: CircularProgressIndicator(),
            );
          }
          if (state is TestSuccessState){
            return
              ListView.builder(
    itemCount: state.asbeza?.length,
                itemBuilder: (BuildContext context, int index) {
                  final asbezaVal = state.asbeza![index];
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.contain,
                                        image: NetworkImage(asbezaVal.image))),
                                height: MediaQuery.of(context).size.height * .1,
                                width: MediaQuery.of(context).size.width * .3,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 11, vertical: 5),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(asbezaVal.foodTitle),
                                    Text(
                                      "${asbezaVal.foodPrice}\$",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.shopping_cart))
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  );
                },
              );

        }
          return Container();
        },
      ),
    );
  }
}
