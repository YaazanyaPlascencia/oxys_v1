import 'dart:async';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class NewCardForm extends StatefulWidget {
  const NewCardForm ({Key? key}) : super(key: key);
  @override
  _NewCardFormState createState() => _NewCardFormState ();
}
class _NewCardFormState extends State<NewCardForm>{
  List< dynamic> _project = [];
  String? projectId;
  List<dynamic> _cardtype = [];
  String? cardtypeId;
  List<dynamic> _cardParent = [];
  String? cardParentId;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController controllerCard = TextEditingController();
  TextEditingController controllerDescription = TextEditingController();
  @override
  void initState(){
    super.initState();
    _project.add({'id':1,'Project':'Project 1'});
    _project.add({'id':2,'Project':'Project 2'});
    _cardtype= [{'id': 1, 'CardType':'CardType1'},
      {'id': 2, 'CardType':'CardType1'}];
    _cardParent = [{'id':1,'Expense Type': "Expense Type1"},
      {'id':2,'Expense Type': "Expense Type2"}];
  }
  @override
  Widget build(BuildContext context){
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
                Text('\t \t   \t    New Card',
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
              child: Form(
                key: formKey,
                child: 
                Container(
                  margin: EdgeInsets.all(20),
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
                        child: _CardTitle(),),
                      const SizedBox(height: 5.0,),
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
                          'Select Project',
                          projectId,
                          _project,
                              (onChangedVal){
                            projectId = onChangedVal;
                            print('Selected Project: $onChangedVal');
                          },
                              (onValidateVal){
                            if(onValidateVal == null){
                              return 'Please Select Project';
                            }
                            return null;
                          },
                          borderColor: Theme.of(context).primaryColorDark,
                          borderFocusColor: Theme.of(context).primaryColorDark,
                          borderRadius: 4,
                          optionValue: 'id',
                          optionLabel: 'Project',
                          hintFontSize: 16,
                          paddingLeft: 0,
                          paddingRight: 0,
                          paddingBottom: 2
                      ),
                      ),
                      const SizedBox(height: 5.0,),
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
                          'Select Card Type',
                          cardtypeId,
                          _cardtype,
                              (onChangedVal){
                            cardtypeId = onChangedVal;
                            print('Selected Card Type: $onChangedVal');
                          },
                              (onValidateVal){
                            if(onValidateVal == null){
                              return 'Please Select Card Type';
                            }
                            return null;
                          },
                          borderColor: Theme.of(context).primaryColorDark,
                          borderFocusColor: Theme.of(context).primaryColorDark,
                          borderRadius: 4,
                          optionValue: 'id',
                          optionLabel: 'CardType',
                          hintFontSize: 16,
                          paddingLeft: 0,
                          paddingRight: 0,
                          paddingBottom: 2
                      ),
                      ),
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
                      FormHelper.dropDownWidget(
                          context,
                          'Select Card Parent (Left Empty)',
                          cardParentId,
                          _cardParent,
                              (onChangedVal){
                            cardParentId = onChangedVal;
                            print('Selected Card Parent: $onChangedVal');
                          },
                              (onValidateVal){
                            if(onValidateVal == null){
                              return 'Please Select Card Parent';
                            }
                            return null;
                          },
                          borderColor: Theme.of(context).primaryColorDark,
                          borderFocusColor: Theme.of(context).primaryColorDark,
                          borderRadius: 4,
                          optionValue: 'id',
                          optionLabel: 'Expense Type',
                          hintFontSize: 16,
                          paddingLeft: 0,
                          paddingRight: 0,
                          paddingBottom: 2
                      ),
                      ),
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
                      _CardDescription(),
                      ),
                      const SizedBox(height: 5,),
                      ElevatedButton (
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.deepPurple[900],
                          fixedSize: const Size(360, 50),
                          side: const BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                        ),
                        onPressed: ()  {},
                        child:  const Text('Save',),
                      ),
                    ],
                  ),
                ),
                
              )
          )
      );



  }
  TextFormField _CardTitle() {
    return TextFormField(
      controller: controllerCard,
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
        hintText: 'Card Title',
        border: OutlineInputBorder(),
      ),
    );
  }
}
TextFormField _CardDescription() {
  TextEditingController controllerDescription1 = TextEditingController();
  return TextFormField(
    controller: controllerDescription1,
    validator: (String? value){
      if(value == null || value.isEmpty) {
        return 'Campo requerido';
      }
      return null;
    },
    style: const TextStyle(
      fontSize: 16,),
    decoration: const InputDecoration(
      hintText: 'Card Description',
      border: OutlineInputBorder(),
    ),
    maxLines: 5,
  );
}
