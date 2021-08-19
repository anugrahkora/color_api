import 'package:color_api/model/model.dart';
import 'package:color_api/service/services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ColorAPI'),
      ),
      body: FutureBuilder<ColorModel>(
        future: ColorApi().fetchServiceApi(),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          else
            return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                              'Hex :${snapshot.data.hex.value}'),
                          Text(
                              'HSL :${snapshot.data.hsl.value}'),
                          Text(
                              'Name :${snapshot.data.name.value}'),
                          
                        ],
                      ),
                    ),
                  );
                });
        },
      ),
    );
  }
}
