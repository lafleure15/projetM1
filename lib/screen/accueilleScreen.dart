import 'dart:math';

import 'package:flutter/material.dart';

import 'formScreen.dart';

class AccueilleScreen extends StatefulWidget {
  @override
  _AccueilleScreen createState() => _AccueilleScreen();
}

class _AccueilleScreen extends State<AccueilleScreen> {
  @override
  initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          title: Text('BIELLETAGE'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      onPressed: () {
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                                        builder: (BuildContext
                                                                context) =>
                                                            FormScreen()));
                                          },
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      padding: EdgeInsets.all(15),
                      primary: Colors.lightBlue,
                      onPrimary: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      'Nouveau',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Table(
                    border: TableBorder.all(color: Colors.black),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      const TableRow(
                          decoration:
                              BoxDecoration(color: Colors.lightBlueAccent),
                          children: [
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Nom',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white)),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Prenom',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white)),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Contact',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white)),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Nombre de ticket',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white)),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Statut',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white)),
                              ),
                            )
                          ]),
                      ...List.generate(
                          30,
                          (index) => const TableRow(children: [
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Nombre',
                                        style: TextStyle(fontSize: 10)),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Nombre',
                                        style: TextStyle(fontSize: 10)),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Nombre',
                                        style: TextStyle(fontSize: 10)),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Nombre',
                                        style: TextStyle(fontSize: 10)),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Nombre',
                                        style: TextStyle(fontSize: 10)),
                                  ),
                                ),
                              ]))
                    ],
                  ),
                ],
              )),
        ));
  }
}
