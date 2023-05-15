import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class NewTimeRecordForm extends StatefulWidget {
  const NewTimeRecordForm ({Key? key}) : super(key: key);
  @override
  _NewTimeRecordFormState createState() => _NewTimeRecordFormState ();
}
class _NewTimeRecordFormState extends State<NewTimeRecordForm> {
  List< dynamic> _project = [];
  String? projectId;
  List<dynamic> _timeCost = [];
  String? timeCostId;
  List< dynamic> _date = [];
  String? date;
  List<dynamic> _fromHour = [];
  String? fromHour;
  List< dynamic> _toHour = [];
  String? toHour;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController controllerProjectHashtag = TextEditingController();
  TextEditingController controllerExperienceHashtag = TextEditingController();
  TextEditingController controllerActivity = TextEditingController();
  @override
  void initState(){
    super.initState();
    _project= [{'id': 1, 'Project':'Project1'},
      {'id': 2, 'Project':'Project2'}];
    _timeCost= [{'id': 1, 'Time':'Time1'},
      {'id': 2, 'Time':'Time2'}];
    _date = [{'id':1,'Date': "15/02"},
      {'id':2,'Date': "04/05"}];
    _fromHour= [{'id': 1, 'From Hour':'6:00'},
      {'id': 2, 'From Hour':'7:00'}];
    _toHour= [{'id': 1, 'To Hour':'16:00'},
      {'id': 2, 'To Hour':'17:00'}];
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
        title:
        Column(
          children: const [
            Text('\t \t   New Time Record',
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
      body:  SingleChildScrollView(
          child: Form(
            key: formKey,
            child: 
            Container(
              margin: EdgeInsets.all(20),
              child:  Column(
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
                      'Project',
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
                    child:FormHelper.dropDownWidget(
                      context,
                      'Select Time Cost Unit',
                      timeCostId,
                      _timeCost,
                          (onChangedVal){
                        timeCostId = onChangedVal;
                        print('Selected Time Cost Unit: $onChangedVal');
                      },
                          (onValidateVal){
                        if(onValidateVal == null){
                          return 'Please Select Time Cost Unit';
                        }
                        return null;
                      },
                      borderColor: Theme.of(context).primaryColorDark,
                      borderFocusColor: Theme.of(context).primaryColorDark,
                      borderRadius: 4,
                      optionValue: 'id',
                      optionLabel: 'Time',
                      hintFontSize: 16,
                      paddingLeft: 0,
                      paddingRight: 0,
                      paddingBottom: 2
                  ),
                  ),
                  const SizedBox(height: 5,),
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
                      'Date',
                      date,
                      _date,
                          (onChangedVal){
                        date = onChangedVal;
                        print('Selected Date: $onChangedVal');
                      },
                          (onValidateVal){
                        if(onValidateVal == null){
                          return 'Please Select Date';
                        }
                        return null;
                      },
                      borderColor: Theme.of(context).primaryColorDark,
                      borderFocusColor: Theme.of(context).primaryColorDark,
                      borderRadius: 4,
                      optionValue: 'id',
                      optionLabel: 'Date',
                      hintFontSize: 16,
                      paddingLeft: 0,
                      paddingRight: 0,
                      paddingBottom: 2
                  ),),
                  const SizedBox(height: 5,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:FormHelper.dropDownWidget(
                      context,
                      'From Hour',
                      fromHour,
                      _fromHour,
                          (onChangedVal){
                        fromHour = onChangedVal;
                        print('Selected From Hour: $onChangedVal');
                      },
                          (onValidateVal){
                        if(onValidateVal == null){
                          return 'Please Select From Hour';
                        }
                        return null;
                      },
                      borderColor: Theme.of(context).primaryColorDark,
                      borderFocusColor: Theme.of(context).primaryColorDark,
                      borderRadius: 4,
                      optionValue: 'id',
                      optionLabel: 'From Hour',
                      hintFontSize: 16,
                      paddingLeft: 0,
                      paddingRight: 0,
                      paddingBottom: 2
                  ),
                  ),
                  const SizedBox(height: 5,),
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
                      'To Hour',
                      toHour,
                      _toHour,
                          (onChangedVal){
                        toHour = onChangedVal;
                        print('Selected To Hour: $onChangedVal');
                      },
                          (onValidateVal){
                        if(onValidateVal == null){
                          return 'Please Select To Hour';
                        }
                        return null;
                      },
                      borderColor: Theme.of(context).primaryColorDark,
                      borderFocusColor: Theme.of(context).primaryColorDark,
                      borderRadius: 4,
                      optionValue: 'id',
                      optionLabel: 'To Hour',
                      hintFontSize: 16,
                      paddingLeft: 0,
                      paddingRight: 0,
                      paddingBottom: 2
                  ),),
                  const SizedBox(height: 5,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:
                  _ProjectHashtag(),),
                  const SizedBox(height: 5,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:
                  _ExperienceHashtag(),),
                  const SizedBox(height: 5,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:
                  _ActivityTextDescription(),),
                  SizedBox(height: 10,),
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
                    child: const Text('Save',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),),
                  ),
                  const SizedBox(height: 5,),
                ],
              ),
            ),
          )
      ),
    );

  }

  TextFormField _ProjectHashtag() {
    return TextFormField(
      controller: controllerProjectHashtag,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 16,),
      decoration: const InputDecoration(
        hintText: 'Project Hashtag #costumercostunit',
        border: OutlineInputBorder(),
      ),
    );
  }
  TextFormField _ExperienceHashtag() {
    return TextFormField(
      controller: controllerExperienceHashtag,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 16,),
      decoration: const InputDecoration(
        hintText: 'Experience Hashtag #AllenBradley',
        border: OutlineInputBorder(),
      ),
    );
  }
  TextFormField _ActivityTextDescription() {
    return TextFormField(
      controller: controllerActivity,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 16,),
      decoration: const InputDecoration(
        hintText: 'Activity text description',
        border: OutlineInputBorder(),
      ),
      maxLines: 5,
    );
  }
}

