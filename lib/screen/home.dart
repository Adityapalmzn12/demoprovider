import 'package:demoprovider/models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('object');
    return Scaffold(
        appBar: AppBar(
          title: const Text("Provider Demo"),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Provider.of<HomeModel>(context, listen: false).updateData();
              },
              child: Text("click me"),
            ),
            Selector<HomeModel, int>(
                selector: (_, provider) => provider.i,
                builder: (context, number1, child) {
                  print('Build num1');
                  return Container(
                    padding: EdgeInsets.all(10),
                    child: Text('$number1'),
                  );
                }),


          ],
        ));
  }
}
