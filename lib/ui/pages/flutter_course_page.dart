import 'package:flutter/material.dart';

class FlutterCoursePage extends StatelessWidget {
  const FlutterCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: (Column(
            children: [
              Text(
                "Flutter course",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "2025-10",
                style: TextStyle(color: Colors.white70, fontSize: 15),
              )
            ],
          )),
          actions: <Widget>[
            Container(
                margin: EdgeInsets.all(3),
                decoration: ShapeDecoration(
                  color: Colors.black45,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )),
            Container(
                margin: EdgeInsets.all(5),
                decoration: ShapeDecoration(
                  color: Colors.black45,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )),
          ],
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          // you may remove this widget if you don't want to use it
          child: Column(
            children: <Widget>[
              buildHeader(),
              buildCourseFocus(),
              buildModules(),
              buildProjectList(),
            ],
          ),
        ));
  }

  Widget buildHeader() {
    return const Text("FLutter course");
  }

  Widget buildCourseFocus() {
    return TitleSection(
      name: 'Flutter course',
    );
  }

  Widget buildModules() {
    return SafeArea(
        child: Column(
      children: [
        const Text("Modules"),
        ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160,
              color: Colors.red,
            ),
            Container(
              width: 160,
              color: Colors.blue,
            ),
            Container(
              width: 160,
              color: Colors.green,
            ),
            Container(
              width: 160,
              color: Colors.yellow,
            ),
            Container(
              width: 160,
              color: Colors.orange,
            ),
          ],
        ),
      ],
    ));
  }

  Widget buildProjectList() {
    final List<String> entries = <String>['A', 'B', 'C'];

    return Expanded(
      child: ListView.builder(
        itemCount: entries.length,
        itemBuilder: (context, posicion) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                entries[posicion],
                style: TextStyle(fontSize: 22.0),
              ),
            ),
          );
        },
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
