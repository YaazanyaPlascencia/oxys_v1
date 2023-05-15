import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:oxys/Sale/NewSite_Sale.dart';




class NewLeadFormSale extends StatefulWidget {
  const NewLeadFormSale ({Key? key}) : super(key: key);
  @override
  _NewLeadFormSaleState createState() => _NewLeadFormSaleState ();
}
class _NewLeadFormSaleState extends State<NewLeadFormSale> {
  List<dynamic> _site = [];
  String? siteId;
  List<dynamic> _contact = [];
  String? contactId;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController controllerDescriptionR = TextEditingController();

  @override
  void initState() {
    super.initState();
    _site = [{'id': 1, 'Site': 'Site1'},
      {'id': 2, 'Site': 'Site2'}];
    _contact = [{'id': 1, 'Contact': "Contact1"},
      {'id': 2, 'Contact': "Contact2"}];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
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
          title: const Text('\t \t  CREATE A NEW LEAD',
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
      body:  SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(height: 15.0,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: FormHelper.dropDownWidget(
                    context,
                    'Site',
                    siteId,
                    _site,
                        (onChangedVal) {
                      siteId = onChangedVal;
                      print('Selected Site: $onChangedVal');
                    },
                        (onValidateVal) {
                      if (onValidateVal == null) {
                        return 'Please Select Site';
                      }
                      return null;
                    },
                    borderColor: Theme
                        .of(context)
                        .primaryColorDark,
                    borderFocusColor: Theme
                        .of(context)
                        .primaryColorDark,
                    borderRadius: 5,
                    optionValue: 'id',
                    optionLabel: 'Site',
                    hintFontSize: 16,
                    paddingLeft: 0,
                    paddingRight: 0,
                    paddingBottom: 2,
                ),
              ),
              const SizedBox(height: 15.0,),
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
                   builder: (context) => const NewSiteSaleForm())
                  );
                },
                child: const Text('Create New Site', style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),),
              ),
              const SizedBox(height: 15.0,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: FormHelper.dropDownWidget(
                    context,
                    'Contact',
                    contactId,
                    _contact,
                        (onChangedVal) {
                      contactId = onChangedVal;
                      print('Selected Contact: $onChangedVal');
                    },
                        (onValidateVal) {
                      if (onValidateVal == null) {
                        return 'Please Select Contact';
                      }
                      return null;
                    },
                    borderColor: Theme
                        .of(context)
                        .primaryColorDark,
                    borderFocusColor: Theme
                        .of(context)
                        .primaryColorDark,
                    borderRadius: 4,
                    optionValue: 'id',
                    optionLabel: 'Contact',
                    hintFontSize: 16,
                    paddingLeft: 0,
                    paddingRight: 0,
                    paddingBottom: 2
                ),
              ),
              const SizedBox(height: 15.0,),
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
                  //builder: (context) =>  const NewContactForm())
                  //);
                },
                child: const Text('Create New Contact', style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),),
              ),
              const SizedBox(height: 15.0,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: _RequirementDescription(),
              ),
              const SizedBox(height: 15,),
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
                onPressed: () async {
                  //await addRequirementDescription(controllerDescriptionR.text);
                  //Navigator.pop(context);
                  if (formKey.currentState!.validate()) {}
                  },
                child: const Text('Save', style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),),
              ),
            ],
          ),
        ),
      )
    ) ;

  }

  TextFormField _RequirementDescription() {
    TextEditingController controllerDescription = TextEditingController();
    return TextFormField(
      controller: controllerDescription,
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 16,),
      decoration: const InputDecoration(

        hintText: 'RequirementDescription',
        border: OutlineInputBorder(),
      ),
      maxLines: 5,
    );
  }


}
