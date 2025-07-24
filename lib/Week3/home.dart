import 'package:flutter/material.dart';
import 'package:projects/Week3/list_provider.dart';
import 'package:projects/Week3/second.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<NumbersListProvider>(context, listen: false).Add();
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('HOME'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Consumer<NumbersListProvider>(
        builder: ((context, numbersProviderModel, child) => SizedBox(
          child: Column(
            children: [
              Center(
                child: Text(

                       numbersProviderModel.Numbers.last.toString(),

                  style: TextStyle(fontSize: 30),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: numbersProviderModel.Numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numbersProviderModel.Numbers[index].toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          Second(),
                    ),
                  );
                },
                child: Text('Second'),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
