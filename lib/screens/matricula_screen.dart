import 'package:flutter/material.dart';

import '../models/Person_model.dart';

class MatriculasHome extends StatefulWidget {
  @override
  State<MatriculasHome> createState() => _MatriculasHomeState();
}

class _MatriculasHomeState extends State<MatriculasHome> {
  List<String> names = ["ana", "paz", "luana"];

  List<Person> peopleList = [
    Person(name: "Ana", address: "av 1245", phone: "12345679"),
    Person(name: "Lia", address: "av lima", phone: "9751665"),
    Person(name: "Maria", address: "av mlsis", phone: "88888888"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Matriculas App"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              peopleList.add(
                Person(
                    name: "Pedro", address: "av larco 789", phone: "11111111"),
              );
              setState(() {});
            },
            child: Text("Agregar"),
          ),
          ...peopleList.map((e) => ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  radius: 25,
                  child: Text(
                    e.name[0],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                title: Text(e.name),
                subtitle: Text(e.address),
                trailing: Text(e.phone),
              )),
          // Text("HIJOS"),
          // ...names.map((e) => Text("hola", style: TextStyle(fontSize: 30),)),
          // ...names.map((e) => Text(e, style: TextStyle(fontSize: 30 ),)),
          // ...List.generate(names.length, (index) => Text(names[index])),
        ],
      ),
    );
  }
}
