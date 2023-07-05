import 'package:biellettage/screen/accueilleScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../champwidget.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  late TextEditingController controller;
  final _key = GlobalKey<FormState>();
  CustomTextField nom = new CustomTextField();
  CustomTextField prenom = new CustomTextField();
  CustomTextField contact = new CustomTextField();
  CustomTextField nombre = new CustomTextField();
  CustomTextField etat = new CustomTextField();
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    controller = TextEditingController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => AccueilleScreen()));
          },
        ),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Center(
                child: Container(
                    margin: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Form(
                      key: _key,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Nouveau',
                            style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          buildEmail(
                              controller, nom.textFormField(Icons.mail), 'Nom'),
                          SizedBox(
                            height: 20,
                          ),
                          buildEmail(controller,
                              prenom.textFormField(Icons.lock), 'Prenom'),
                          SizedBox(
                            height: 20,
                          ),
                          buildEmail(controller,
                              contact.textFormField(Icons.mail), 'Contact'),
                          SizedBox(
                            height: 20,
                          ),
                          buildEmail(controller,
                              nombre.textFormField(Icons.lock), 'Nombre'),
                          SizedBox(
                            height: 20,
                          ),
                          buildEmail(controller, etat.textFormField(Icons.mail),
                              'Etat'),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
