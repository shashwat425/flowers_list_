import 'package:flutter/material.dart';
import 'package:flowerslist/category.dart';
import 'package:flowerslist/list.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flowers",
          style: TextStyle(
            fontSize: 35,
            fontFamily: 'Merienda',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.red.shade400,
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 0.6),
        itemCount: 18,
        itemBuilder: (context, i) {
          return InkWell(
            child: Container(
              margin: EdgeInsets.all(4),
              child: Card(
                elevation: 4,
                child: Container(
                  child: Container(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    child: buildTitle(categories[i]['title']),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(categories[i]['img']),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),

            onTap: () =>
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Category(
                            title: categories[i]['title'],
                          )))
            },
          );
        });
  }

  Widget buildTitle(String title) {
    return Center(
      child: Container(
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        decoration: BoxDecoration(
            border: Border.all(
                width: 2, color: Colors.white, style: BorderStyle.solid)),
      ),
    );
  }
}


