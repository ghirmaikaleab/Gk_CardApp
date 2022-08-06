import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: GkCard(),
    ));

class GkCard extends StatefulWidget {
  const GkCard({Key? key}) : super(key: key);

  @override
  State<GkCard> createState() => _GkCardState();
}

class _GkCardState extends State<GkCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text('Gk_Card'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ninjaLevel += 1;
            });
          },
          backgroundColor: Colors.grey[800],
          child: const Icon(Icons.add),
        ),
        // ignore: duplicate_ignore
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage:AssetImage('assets/avatar-icon.jpg'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 90.0,
                color: Colors.grey[800],
              ),
              const Text(
                'NAME',
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Chun_Li',
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Color.fromARGB(255, 230, 182, 10),
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                '$ninjaLevel',
                style: const TextStyle(
                  letterSpacing: 2.0,
                  color: Color.fromARGB(255, 230, 182, 10),
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                children: const <Widget>[
                  Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 124, 113, 113),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'ghir.Gk@kabbee.org',
                    style: TextStyle(
                        color: Color.fromARGB(255, 124, 113, 113),
                        fontSize: 18.0,
                        letterSpacing: 1.0),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
