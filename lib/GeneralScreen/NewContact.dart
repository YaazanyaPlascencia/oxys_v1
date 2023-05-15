import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show AppBar, BorderSide, BuildContext, Colors, Column, Container, EdgeInsets, ElevatedButton, Form, Icons, InputDecoration, Key, MainAxisAlignment, MainAxisSize, OutlineInputBorder, Row, Scaffold, SingleChildScrollView, Size, SizedBox, State, StatefulWidget, Text, TextEditingController, TextFormField, TextInputType, TextStyle, Theme, Widget;
import 'package:snippet_coder_utils/FormHelper.dart';

class NewContactForm extends StatefulWidget {
  const NewContactForm ({Key? key,}) : super(key: key);
  @override
  _NewContactFormState createState() => _NewContactFormState ();
}
class _NewContactFormState extends State<NewContactForm> with InputValidation {
  final List< dynamic> _site = [];
  String? siteId;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPhone = TextEditingController();
  TextEditingController controllerRole = TextEditingController();
  TextEditingController controllerDepartment = TextEditingController();
  TextEditingController controllerLastName = TextEditingController();
  TextEditingController controllerName = TextEditingController();


  @override
  void initState(){
    super.initState();
    _site.add({'id':1,'Site':'Site 1'});
    _site.add({'id':2,'Site':'Site 2'});
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
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
          title:
          Column(
            children: const [
              Text('\t \t   New Contact',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w700
                ),),
            ],
          ),
          actions: const [
            Image(
                image: AssetImage('assets/logo.jpg')
            ),
          ],

        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      child:
                  FormHelper.dropDownWidget(
                      context,
                      'Site',
                      siteId,
                      _site,
                          (onChangedVal){
                        siteId = onChangedVal;
                        print('Selected Site: $onChangedVal');
                      },
                          (onValidateVal){
                        if(onValidateVal == null){
                          return 'Please Select Site';
                        }
                        return null;
                      },
                      borderColor: Theme.of(context).primaryColorDark,
                      borderFocusColor: Theme.of(context).primaryColorDark,
                      borderRadius: 4,
                      optionValue: 'id',
                      optionLabel: 'Site',
                      hintFontSize: 16,
                      paddingLeft: 0,
                      paddingRight: 0,
                      paddingBottom: 2
                  ),),
                  const SizedBox(height: 5.0,),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:
                  _Name(),),
                  const SizedBox(height: 5.0,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                  _LastName(),),
                  const SizedBox(height: 5.0,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                  _WorkDepartment(),),
                  const SizedBox(height: 5.0,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                  _WorkRole(),),
                  const SizedBox(height: 5.0,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                  _WorkPhone(),),
                  const SizedBox(height: 5.0,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                  _WorkeMail(),),
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
                    onPressed: (){
                      },
                    child: const Text('Save',style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),),
                  )
                ],
              ),
            ),
          ),
        ),

      );
  }

  TextFormField _Name() {
    return TextFormField(
      controller: controllerName,
      keyboardType: TextInputType.name,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 16,),
      decoration: const InputDecoration(
        hintText: 'Name',
        border: OutlineInputBorder(),
      ),
    );
  }
  TextFormField _LastName() {
    return TextFormField(
      controller: controllerLastName,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      keyboardType: TextInputType.name,
      style: const TextStyle(
        fontSize: 16,),
      decoration: const InputDecoration(
        hintText: 'Last Name',
        border: OutlineInputBorder(),
      ),
    );
  }
  TextFormField _WorkDepartment() {
    return TextFormField(
      controller: controllerDepartment,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 16,),
      decoration: const InputDecoration(
        hintText: 'Work Department',
        border: OutlineInputBorder(),
      ),
    );
  }
  TextFormField _WorkRole() {
    return TextFormField(
      controller: controllerRole,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 16,),
      decoration: const InputDecoration(
        hintText: 'Work Role',
        border: OutlineInputBorder(),
      ),
    );
  }
  TextFormField _WorkPhone() {
    return TextFormField(
      controller: controllerPhone,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Required field';
        }
        if(value.length < 10) {
          return 'Wrong Phone Number';
        }
        if(value.startsWith('0')){
          return 'Invalid phone number';
        }
        return null;
      },
      keyboardType: TextInputType.phone,
      style: const TextStyle(
        fontSize: 16,),
      decoration: const InputDecoration(
        hintText: 'Work Phone',
        border: OutlineInputBorder(),
      ),
    );
  }
  TextFormField _WorkeMail() {
    return TextFormField(
      controller: controllerEmail,
      validator: (email){
        if(email == null || email.isEmpty) {
          return 'Campo requerido';
        }
        if(isEmailValid(email)) return null;
        else
          return 'Wrong e-Mail';

      },
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(
        fontSize: 16,),
      decoration:  const InputDecoration(
        hintText: 'Work eMail',

        border: OutlineInputBorder(
        ),
      ),
    );
  }
}
mixin InputValidation {
  bool isEmailValid(String email){
    RegExp regex = RegExp(
        r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$");
    return regex.hasMatch(email);
  }

}
