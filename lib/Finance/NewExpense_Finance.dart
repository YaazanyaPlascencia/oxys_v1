import 'package:flutter/material.dart';
import 'package:oxys/Finance/NewProduct_Finance.dart';
import 'package:oxys/Finance/NewPurchase_Finance.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class NewExpenseReportFinanceForm extends StatefulWidget {
  const NewExpenseReportFinanceForm ({Key? key}) : super(key: key);
  @override
  _NewExpenseReportFinanceFormState createState() => _NewExpenseReportFinanceFormState ();
}
class _NewExpenseReportFinanceFormState extends State<NewExpenseReportFinanceForm> {
  List< dynamic> _project = [];
  String? projectId;
  List<dynamic> _cost = [];
  String? costId;
  List<dynamic> _type = [];
  String? typeId;
  GlobalKey<FormState> formKeyAmount = GlobalKey<FormState>();
  TextEditingController controllerBeforeTaxes = TextEditingController();
  TextEditingController controllerAfterTaxes = TextEditingController();
  @override
  void initState(){
    super.initState();
    _project.add({'id':1,'Project':'Project 1'});
    _project.add({'id':2,'Project':'Project 2'});
    _cost= [{'id': 1, 'Cost':'Cost1'},
      {'id': 2, 'Cost':'Cost2'}];
    _type = [{'id':1,'Expense Type': "Expense Type1"},
      {'id':2,'Expense Type': "Expense Type2"}];
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
          title: const Text('\t \t New Expense Report',
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
        padding: EdgeInsets.symmetric(horizontal: 25),
        child:Form(
          key: formKeyAmount,
          child: Column(
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
                child:  FormHelper.dropDownWidget(
                    context,
                    'Cost Unit',
                    costId,
                    _cost,
                        (onChangedVal){
                      costId = onChangedVal;
                      print('Selected Cost: $onChangedVal');
                    },
                        (onValidateVal){
                      if(onValidateVal == null){
                        return 'Please Select Cost';
                      }
                      return null;
                    },
                    borderColor: Theme.of(context).primaryColorDark,
                    borderFocusColor: Theme.of(context).primaryColorDark,
                    borderRadius: 4,
                    optionValue: 'id',
                    optionLabel: 'Cost',
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
                child: FormHelper.dropDownWidget(
                    context,
                    'Expense Type',
                    typeId,
                    _type,
                        (onChangedVal){
                      typeId = onChangedVal;
                      print('Selected Expense Type: $onChangedVal');
                    },
                        (onValidateVal){
                      if(onValidateVal == null){
                        return 'Please Select Expense Type';
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
              const SizedBox(height: 5,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.deepPurple[900], backgroundColor: Colors.white, fixedSize: const Size(400, 50),
                  side: const BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
                onPressed: () {},
                child: const Text('Add Invoice',style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),),
              ),
              const SizedBox(height: 5,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.deepPurple[900], backgroundColor: Colors.white, fixedSize: const Size(400, 50),
                  side: const BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
                onPressed: () {},
                child: const Text('Add Receipt',style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),),
              ),
              const SizedBox(height: 5,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.deepPurple[900], backgroundColor: Colors.white, fixedSize: const Size(400, 50),
                  side: const BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
                onPressed: () {},
                child: const Text('Add XML',style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),),
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
                child: _AmountBeforeTaxes(),
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
                child:_AmountWithTaxes(),
              ),
              const SizedBox(height: 10,),
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
                onPressed: () {
                  if(formKeyAmount.currentState!.validate()){
                  }
                  },
                child: const Text('Save',style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),),
              ),
              const SizedBox(height: 10,),
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
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const NewPurchaseFinanceForm())
                  );
                },
                child: const Text('NewProduct',
                  style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),),
              ),
            ],
          ),
        ),
      )
    );
  }
  TextFormField _AmountBeforeTaxes() {
    return TextFormField(
      controller: controllerBeforeTaxes,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Amount Before Taxes',
      ),
      style: const TextStyle(
        fontSize: 16,),
    );
  }
  TextFormField _AmountWithTaxes() {
    return TextFormField(
      controller: controllerAfterTaxes,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      keyboardType: TextInputType.number,
      style: const TextStyle(
        fontSize: 16,),
      decoration: const InputDecoration(
        hintText: 'Amount With Taxes',
        border: OutlineInputBorder(),
      ),
    );
  }
}

