import 'dart:developer' show log;
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:oxys/LoginGoogle.dart';
import 'package:oxys/ProjectManager/CommonTasks_PM.dart';
import 'package:oxys/Sale/NewLead_Sale.dart';
import 'firebase_options.dart';
import 'package:oxys/Finance/NewExpense_Finance.dart';
import 'package:oxys/ProjectManager/PMDashboard.dart';
import 'package:oxys/Dashboard/WelcomeDashboard.dart';
import 'package:oxys/Dashboard/DashboardMenuAdd.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    home: Home(),
  ));}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) =>  const Login())
            );
          },
          child: const Image(
              image: AssetImage('assets/logo.jpg')
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});
  static const String dep = 'PM';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Icon(
              Icons.account_circle,
              color: Colors.grey,
              size: 120.0,
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.blue,
                backgroundColor: Colors.white,
                fixedSize: const Size(300, 60),
                side: const BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
              onPressed: ()  {
                if(dep == 'Sale'){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>  const NewLeadFormSale())
                  );
                }
                if (dep == 'PM'){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>  const CommonTask())
                  );
                }
                if (dep == 'Finanzas'){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>  const NewExpenseReportFinanceForm())
                  );
                }
                if (dep == 'User'){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>  const DashboardMenu())
                  );
                }
                //LoginGoogleUtils().signInWithGoogle().then((user){
                  //  if(user != null){
                    //  Navigator.of(context).push(MaterialPageRoute(
                      //  builder: (context){
                        //  return Home();
                          //},
                      //),
                      //);
                    //}else{
                      //log('LogginGoogle build()Error user null');
                 //}
              //});
  },
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                  Image(
                width: 50,
                  height: 50,
                  image: AssetImage('assets/google.png',
                 )
              ),
                  Text('Continue with Google',
                  style: TextStyle(
                    color: Colors.grey
                  ),)
                ]
            )
            )
          ],
        )

      ),
    );
  }
}


