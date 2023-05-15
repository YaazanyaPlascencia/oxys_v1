import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AppBar, BorderSide, BuildContext, Colors, Column, Container, DropdownButtonFormField, DropdownMenuItem, EdgeInsets, ElevatedButton, Icon, Icons, InputDecoration, Key, MainAxisAlignment, MainAxisSize, MaterialPageRoute, Navigator, OutlineInputBorder, Row, Scaffold, SingleChildScrollView, Size, SizedBox, State, StatefulWidget, Text, TextFormField, TextStyle, Theme, Widget;
import 'package:oxys/Sale/NewCompany_Sale.dart';
import 'package:snippet_coder_utils/FormHelper.dart';


class NewSiteSaleForm extends StatefulWidget {
  const NewSiteSaleForm ({Key? key}) : super(key: key);
  @override
  _NewSiteSaleFormState createState() => _NewSiteSaleFormState ();
}
class _NewSiteSaleFormState extends State<NewSiteSaleForm> {
  List<dynamic> _oem = [];
  String? oem;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController controllerSiteName = TextEditingController();
  TextEditingController controllerDescription = TextEditingController();
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
        title: const Text('\t \t  CREATE A NEW SITE',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700
          ),),
        actions: const [
          Image(
              image: AssetImage('assets/logo.jpg')
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child:  FormHelper.dropDownWidget(
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
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const NewCompanySaleForm())
                      );
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
                    child: _UniqueName(),
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
                    child:_SiteDescription(),
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
                    onPressed: () {},
                    child: const Text('Site Location',
                      style: TextStyle(
                          fontWeight: FontWeight.w300
                      ),),
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
                      //await addSiteName(controllerSiteName.text);
                      //await addSiteDescription(controllerDescription.text);
                      //Navigator.pop(context);
                      if(formKey.currentState!.validate()){
                      }
                      },
                    child: const Text('Save',style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),),
                  )
                ],
              ),
            )
        ),
      ),
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
      dropdownColor: Colors.white,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
          )
      ),

    );
  }
  TextFormField _UniqueName() {
    return TextFormField(
      controller: controllerSiteName,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 16,),
      decoration: const InputDecoration(
        hintText: 'Site Unique Name',
        border: OutlineInputBorder(),
      ),
    );
  }
  TextFormField _SiteDescription() {
    return TextFormField(
      controller: controllerDescription,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 16,),
      decoration: const InputDecoration(
        hintText: 'Site Core Bussines Description',
        border: OutlineInputBorder(),
      ),
      maxLines: 5,
    );
  }
}

