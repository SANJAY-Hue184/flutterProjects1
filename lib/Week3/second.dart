import 'package:flutter/material.dart';
import 'package:projects/Week3/list_provider.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: ((context, numbersProviderModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Provider.of<NumbersListProvider>(context, listen: false).Add();
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text('SECOND'),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
        ),
        body: SizedBox(
          child: Column(
            children: [
              Center(
                child: Text(
                  numbersProviderModel.Numbers.isNotEmpty
                      ? numbersProviderModel.Numbers.last.toString()
                      : 'No numbers',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbersProviderModel.Numbers.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        numbersProviderModel.Numbers[index].toString(),
                        style: TextStyle(fontSize: 24),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
