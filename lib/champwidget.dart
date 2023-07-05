import 'package:flutter/material.dart';

class CustomTextField {
  final String title = '';
  final String placeholder = '';
  late TextEditingController controller = TextEditingController();
  final bool ispass = false;
  String _value = "";

  CustomTextField();
  TextFormField textFormField(IconData icon) {
    return TextFormField(
        onChanged: (e) {
          _value = e;
        },
        validator: (e) {
          if (e == null || e.isEmpty) {
            return 'Champ obligatoire';
          }
          return null;
        },
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.black87),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              icon,
              color: Colors.lightBlue,
            )),
        controller: controller);
  }

  String get value {
    return _value;
  }
}

Widget buildEmail(
    TextEditingController controller, TextFormField form, String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
            color: Colors.lightBlue, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10),
      Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 16,
                    offset: Offset(
                      0,
                      2,
                    ))
              ]),
          height: 60,
          child: form)
    ],
  );
}
