import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AppBar, BorderSide, BuildContext, Colors, Column, Container, DropdownButtonFormField, DropdownMenuItem, EdgeInsets, ElevatedButton, FormState, GlobalKey, Icon, Icons, InputDecoration, Key, MainAxisAlignment, MainAxisSize, MaterialPageRoute, Navigator, OutlineInputBorder, Row, Scaffold, SingleChildScrollView, Size, SizedBox, State, StatefulWidget, Text, TextEditingController, TextFormField, TextStyle, Theme, Widget;
import 'package:snippet_coder_utils/FormHelper.dart';

class NewProductFinanceForm extends StatefulWidget {
  const NewProductFinanceForm ({Key? key}) : super(key: key);
  @override
  _NewProductFinanceFormState createState() => _NewProductFinanceFormState ();
}
class _NewProductFinanceFormState extends State<NewProductFinanceForm> {
  List<dynamic> _oem = [];
  String? oem;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController controllerOEMPart = TextEditingController();
  TextEditingController controllerOEMDescription = TextEditingController();
  TextEditingController controllerWhatIs = TextEditingController();
  @override
  void initState() {
    super.initState();
    _oem = [{'id': 1, 'OEM': 'GROB'},
      {'id': 2, 'OEM': 'ATS'}];
  }
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
          title: const Text('\t \t  \t    New Product',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700
            ),),
          actions: const [
            Image(
                image: AssetImage('assets/logo.jpg')
            ),
          ],
        ),
        body:  SingleChildScrollView (
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
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
                      child: FormHelper.dropDownWidget(
                        context,
                        'OEM',
                        oem,
                        _oem,
                            (onChangedVal){
                          oem = onChangedVal;
                          print('Selected OEM: $onChangedVal');
                        },
                            (onValidateVal){
                          if(onValidateVal == null){
                            return 'Please Select OEM';
                          }
                          return null;
                        },
                        borderColor: Theme.of(context).primaryColorDark,
                        borderFocusColor: Theme.of(context).primaryColorDark,
                        borderRadius: 4,
                        optionValue: 'id',
                        optionLabel: 'OEM',
                        hintFontSize: 16,
                        paddingLeft: 0,
                        paddingRight: 0,
                        paddingBottom: 2
                    ),
                    ),
                    const SizedBox(height: 10.0,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.deepPurple[900],
                        backgroundColor: Colors.white,
                        fixedSize: const Size(360, 50),
                        side: const BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(
                          //builder: (context) => const NewCompanyForm())
                      //);
                  },
                      child: const Text('Create New Company',
                        style: TextStyle(
                            fontWeight: FontWeight.w300
                        ),),
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
                  child: _PartNumber(),
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
                  child: _OEMDescription(),
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
                  child: _WhatIs(),
                ),
                    const SizedBox(height: 10.0,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.deepPurple[900],
                        backgroundColor: Colors.white,
                        fixedSize: const Size(500, 50),
                        side: const BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Add Image',
                        style: TextStyle(
                            fontWeight: FontWeight.w300
                        ),),
                    ),
                    const SizedBox(height: 10.0,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.deepPurple[900],
                        backgroundColor: Colors.white,
                        fixedSize: const Size(500, 50),
                        side: const BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Add Datasheet',
                        style: TextStyle(
                            fontWeight: FontWeight.w300
                        ),),
                    ),
                    const SizedBox(height: 10.0,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepPurple[900],
                        fixedSize: const Size(360, 50),
                        side: const BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      onPressed: () {
                        if(formKey.currentState!.validate()){
                        }
                        },
                      child: const Text('Save',style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text('#Fuentes',
                          style: TextStyle(
                              color: Colors.white
                          ),),
                        Text('#Cables',
                          style: TextStyle(
                              color: Colors.white
                          ),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(       '#Siemens',
                              style: TextStyle(
                                  color: Colors.white
                    ),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children:
                          const [
                          Text('#etc\t\t\t\t\t\t            ',
                          style: TextStyle(
                              color: Colors.white
                          ),)
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
          ),
        )
    );
  }

  DropdownButtonFormField<String> _OEM() {
    String? dropdownValue = 'OEM';
    return DropdownButtonFormField(
      style: const TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      items: <String>['OEM', 'OEM1', 'OEM2', 'OEM3'].map<
          DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 20,
      elevation: 2,
      value: dropdownValue,
      onChanged: (String? valueIn) {
        setState(() {
          dropdownValue = valueIn;
        });
      },
      dropdownColor: Colors.grey,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
          )
      ),

    );
  }
  TextFormField _PartNumber() {
    return TextFormField(
      controller: controllerOEMPart,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 16,),
      textDirection: TextDirection.rtl,
      decoration: const InputDecoration(
        hintText: 'OEM Part Number No Special Chars',
        hintStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w300,
        ),
        border: OutlineInputBorder(),
      ),
    );
  }
  TextFormField _OEMDescription() {
    return TextFormField(
      controller: controllerOEMDescription,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 16,),
      textDirection: TextDirection.rtl,
      decoration: const InputDecoration(
        hintText: 'OEM Short Description',
        hintStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w300,
        ),
        border: OutlineInputBorder(),
      ),
    );
  }
  TextFormField _WhatIs() {
    return TextFormField(
      controller: controllerWhatIs,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 16,
      ),
      decoration: const InputDecoration(
        hintText: 'What is? multiple # options',
        hintStyle: TextStyle(
            color: Colors.grey
        ),
        border: OutlineInputBorder(),
      ),
    );
  }
}

