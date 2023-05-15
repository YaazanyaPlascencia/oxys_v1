import 'package:flutter/material.dart';

class PMDashboard extends StatefulWidget {
  const PMDashboard ({Key? key}) : super(key: key);
  @override
  _PMDashboard createState() => _PMDashboard ();
}
class _PMDashboard extends State<PMDashboard> {
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
                  Text('\t \t   Nombre Completo',
                    textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700
                  ),),
                  Text('\t \t \t    Posición y Unidad Organizativa',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 12,
                  ),)
                ],
              ),
        actions: const [
          Image(
              image: AssetImage('assets/logo.jpg')
          ),
        ],

      ),
      body:  Center(
        child:
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children:  [
              const SizedBox(height: 50,),
              const Text('\nWelcome to '
                  '\nOxNet'
                  '\nI\'m Oxy'
                  '\nyour Administrator'
                  '\nAssistant',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50,),
              Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black,
                    )
                ),
                child: TextFormField(
                  style: const TextStyle(fontSize: 15),
                  decoration: const InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search,
                        color: Colors.black,),
                      suffixIcon: Icon(Icons.mic,color: Colors.black, )

                  ),
                ),
              )
            ]
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.grey[300],
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 40.0,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        selectedFontSize: 15,
        selectedItemColor: Colors.grey,
        iconSize: 30.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard, color: Colors.black),
            label: 'Dashboard',)
          ,
          BottomNavigationBarItem(
              icon: Icon(Icons.checklist,color: Colors.black),
              label: 'Tasks'),
          BottomNavigationBarItem(
              icon: Icon(Icons.group, color: Colors.black),
              label: 'Teams'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_tree, color: Colors.black),
              label: 'Projects'),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Colors.black),
            label: 'KB',)

        ],
        backgroundColor: Colors.grey[300],
      ),
    );
  }
}