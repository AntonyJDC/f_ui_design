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
      body: Column(
        children: <Widget>[
          buildHeader(),
          buildCourseFocus(),
          buildModules(),
          TitleSection(
            name: 'Projects',
          ),
          buildProjectList(),
        ],
      ),
    );
  }

  Widget buildHeader() {
    return const Text("FLutter course");
  }

  Widget buildCourseFocus() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Course Focus",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.blue,
                        height: 5,
                      ),
                      Text("UI dev")
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.green,
                        height: 5,
                      ),
                      Text("Architecture")
                    ],
                  )),
              Expanded(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.red,
                        height: 5,
                      ),
                      Text("Design")
                    ],
                  )),
              Expanded(
                  child: Column(
                children: [
                  Container(
                    color: Colors.yellow,
                    height: 5,
                  ),
                  Text("Testing")
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }

  Widget buildModules() {

  }

  Widget buildProjectList() {
    final List<String> entries = <String>[
      'Sudoku',
      'Random User',
      'Note Taking',
      'Weather',
      'Delivery App'
    ];

    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: entries.length,
        itemBuilder: (context, posicion) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.folder,
                    color: Colors.lightBlue,
                  ),
                  Text(
                    entries[posicion],
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Spacer(),
                  Icon(Icons.more_vert),
                ],
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
                        fontWeight: FontWeight.bold, fontSize: 20),
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

class ModuleItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ModuleItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 24),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(subtitle, style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}

class ModuleIconItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;

  const ModuleIconItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, size: 40, color: iconColor),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
