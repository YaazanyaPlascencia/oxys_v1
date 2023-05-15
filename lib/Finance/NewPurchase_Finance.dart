import 'package:flutter/material.dart';
import 'package:oxys/Finance/NewProduct_Finance.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class NewPurchaseFinanceForm extends StatefulWidget {
  const NewPurchaseFinanceForm ({Key? key}) : super(key: key);
  @override
  _NewPurchaseFinanceFormState createState() => _NewPurchaseFinanceFormState ();
}
class _NewPurchaseFinanceFormState extends State<NewPurchaseFinanceForm> {
  List< dynamic> _project = [];
  String? projectId;
  List<dynamic> _oem = [];
  String? oem;
  List<dynamic> _cantidad = [];
  String? cantidad;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController controllerWhatIs = TextEditingController();
  TextEditingController controllerPart= TextEditingController();
  @override
  void initState() {
    super.initState();
    _project = [{'id': 1, 'Project': 'Project1'},
      {'id': 2, 'Project': 'Project2'}];
    _oem = [{'id': 1, 'OEM': 'GROB'},
      {'id': 2, 'OEM': 'ATS'}];
    _cantidad = [{'id': 1, 'Cantidad': '1'},
      {'id': 2, 'Cantidad': '2'}];
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
            title: const Text('\tNew Purchase Request',
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
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 5.0,),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
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
                    const SizedBox(height: 5.0,),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    child: _Whatis(),
                    ),
                    const SizedBox(height: 5.0,),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:_PartNumber(),
                    ),
                    const SizedBox(height: 5.0,),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
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
                    const SizedBox(height: 25.0,),
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
                            builder: (context) => const NewProductFinanceForm()));
                        },
                      child: const Text('New Product',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),),
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(' \t#Fuentes \t#Cables \t#Siemens',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.black,
                            width: 1),
                      ),
                      child :
                      Row(
                          children: [
                            const SizedBox(height: 2,),
                            Column(
                              children:  [
                                Text('#Fuente',
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                const Padding(
                                    padding: EdgeInsets.all(5)
                                ),
                                const Expanded(child:Image(
                                  image: AssetImage('assets/Image.png',
                                  ),
                                ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 5,),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text('#Cables',
                                      style: TextStyle(
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    const SizedBox(height: 20,),
                                    const Text('Part Number \n Short \nDescription',
                                      style: TextStyle(
                                          fontSize: 12
                                      ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    const SizedBox(width: 13,),
                                    Column(
                                      children: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            foregroundColor: Colors.deepPurple[900],
                                            backgroundColor: Colors.white,
                                            fixedSize: const Size(130, 50),
                                            side: const BorderSide(
                                              color: Colors.grey,
                                              width: 0.5,
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: const Text('Datasheet',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                            ),),
                                        ),
                                        const SizedBox(height: 5,),
                                        SizedBox(
                                          height: 55,
                                          width: 130,
                                          child:FormHelper.dropDownWidget(
                                              context,
                                              'Cantidad',
                                              cantidad,
                                              _cantidad,
                                                  (onChangedVal){
                                                cantidad = onChangedVal;
                                                print('Selected Cantidad: $onChangedVal');
                                              },
                                                  (onValidateVal){
                                                if(onValidateVal == null){
                                                  return 'Please Select Cantidad';
                                                }
                                                return null;
                                              },
                                              borderColor: Theme.of(context).primaryColorDark,
                                              borderFocusColor: Theme.of(context).primaryColorDark,
                                              borderRadius: 4,
                                              optionValue: 'id',
                                              optionLabel: 'Cantidad',
                                              hintFontSize: 12,
                                              paddingLeft: 0,
                                              paddingRight: 0,
                                              paddingBottom: 2
                                          ),
                                        ),
                                        const SizedBox(height: 5,),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.deepPurple[900],
                                            fixedSize: const Size(130, 50),
                                            side: const BorderSide(
                                              color: Colors.grey,
                                              width: 0.5,
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: const Text('Request',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: double.infinity,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.black,
                            width: 1),
                      ),
                      child :
                      Row(
                          children: [
                            const SizedBox(height: 2,),
                            Column(
                              children: [
                                Text('#Fuente',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                const Padding(
                                    padding: EdgeInsets.all(5)
                                ),
                                const Expanded(child:Image(
                                  image: AssetImage('assets/Image.png',
                                  ),
                                ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 5,),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text('#Siemens',
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    const SizedBox(height: 20,),
                                    const Text('Part Number \n Short \nDescription',
                                      style: TextStyle(
                                          fontSize: 12
                                      ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 23,),
                                    Column(
                                      children: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            foregroundColor: Colors.deepPurple[900],
                                            backgroundColor: Colors.white,
                                            fixedSize: const Size(130, 50),
                                            side: const BorderSide(
                                              color: Colors.grey,
                                              width: 0.5,
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: const Text('Datasheet',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                            ),),
                                        ),
                                        const SizedBox(height: 5,),
                                        SizedBox(
                                          height: 55,
                                          width: 130,
                                          child:
                                          FormHelper.dropDownWidget(
                                              context,
                                              'Cantidad',
                                              cantidad,
                                              _cantidad,
                                                  (onChangedVal){
                                                cantidad = onChangedVal;
                                                print('Selected Cantidad: $onChangedVal');
                                              },
                                                  (onValidateVal){
                                                if(onValidateVal == null){
                                                  return 'Please Select Cantidad';
                                                }
                                                return null;
                                              },
                                              borderColor: Theme.of(context).primaryColorDark,
                                              borderFocusColor: Theme.of(context).primaryColorDark,
                                              borderRadius: 4,
                                              optionValue: 'id',
                                              optionLabel: 'Cantidad',
                                              hintFontSize: 12,
                                              paddingLeft: 0,
                                              paddingRight: 0,
                                              paddingBottom: 2
                                          ),
                                        ),
                                        const SizedBox(height: 5,),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.deepPurple[900],
                                            fixedSize: const Size(130, 50),
                                            side: const BorderSide(
                                              color: Colors.grey,
                                              width: 0.5,
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: const Text('Request',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ]
                      ),
                    ),
                  ],
                ),
              )
          )
      );

  }


  TextFormField _Whatis() {
    return TextFormField(
      controller: controllerWhatIs,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 16,),
      decoration: const InputDecoration(
        hintText: 'What is? #multiple options',
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(),
      ),
    );
  }
  TextFormField _PartNumber() {
    return TextFormField(
      controller: controllerPart,
      validator: (String? value){
        if(value == null || value.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      style: const TextStyle(
        fontSize: 16,),
      decoration: const InputDecoration(
        hintText: 'Part Number Search',
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(),
      ),
    );
  }


}
