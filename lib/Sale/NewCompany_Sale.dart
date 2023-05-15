import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AppBar, BorderSide, BuildContext, Colors, Column, Container, DropdownButtonFormField, DropdownMenuItem, EdgeInsets, ElevatedButton, Icon, Icons, InputDecoration, Key, MainAxisAlignment, MainAxisSize, OutlineInputBorder, Row, Scaffold, SingleChildScrollView, Size, SizedBox, State, StatefulWidget, Text, TextFormField, TextStyle, Widget;

class NewCompanySaleForm extends StatefulWidget {
  const NewCompanySaleForm ({Key? key}) : super(key: key);
  @override
  _NewCompanySaleFormState createState() => _NewCompanySaleFormState ();
}
class _NewCompanySaleFormState extends State<NewCompanySaleForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerDescription = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Builder(
          builder: (BuildContext context) {
            return const Icon(Icons.account_circle,
              color: Colors.white,
              size: 50,
            );
          },
        ),
        title: const Text('\t \t CREATE A NEW COMPANY',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700
          ),),
        actions: const [
          Image(
              image: AssetImage('assets/logo.jpg')
          ),
        ],
      ),
      body:  SingleChildScrollView(
        child:  Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: formKey,
              child:  Column(
                children: [
                  const SizedBox(height: 10.0,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: _CompanyUniqueName(),
                  ),
                  const SizedBox(height: 10.0,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: _CompanyDescription(),
                  ),
                  const SizedBox(height: 10.0,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.deepPurple[900],
                      fixedSize: const Size(350, 50),
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                    onPressed: () //async
                    {
                      //await addcompanyName(controllerName.text);
                      //await addcomanyDescription(controllerDescription.text);
                      //Navigator.pop(context);
                      if(formKey.currentState!.validate()){
                      }
                      },
                    child: const Text('Submit',),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }


  TextFormField _CompanyUniqueName() {
    return TextFormField(
      controller: controllerName,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 15,),
      decoration: const InputDecoration(
        hintText: 'Company Unique Name',
        border: OutlineInputBorder(),
      ),
    );
  }
  TextFormField _CompanyDescription() {
    return TextFormField(
      controller: controllerDescription,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 15,),
      decoration: const InputDecoration(
        hintText: 'Company Core Business description',
        border: OutlineInputBorder(),
      ),
      maxLines: 5,
    );
  }
}

