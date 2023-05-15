import 'package:flutter/material.dart';

class WelcomeDashboard extends StatefulWidget {
  const WelcomeDashboard ({Key? key}) : super(key: key);
  @override
  _WelcomeDashboard createState() => _WelcomeDashboard ();
}
class _WelcomeDashboard extends State<WelcomeDashboard> {
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
      body:  SingleChildScrollView(
        child:
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children:  [
              const Text('\nWelcome to '
                  '\nOxNet'
                  '\nI\'m Oxy'
                  '\nyour Administrator'
                  '\nAssistant',
                style: TextStyle(
                  color: Colors.white,
                  fontSize:25.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20,),
              Container(
                height:200 ,
                margin: const EdgeInsets.all(5),
                color: Colors.white,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(15),
                      width: 160,
                      height: 160,
                      child: const Image(
                          image: AssetImage('assets/Image.png')
                      ),),
                    Row(
                      children: [

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                              height: 30,
                            ),
                            Text('@personas #Temas',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),),
                            Text('Titulo de la noticia',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),),
                            Text('Description noticia'),
                            Text('Description noticia')

                          ],
                        )

                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.account_circle,
                              color: Colors.grey,
                              size: 40,
                            )

                          ],
                        )

                      ],
                    ),

                  ],
                ),
              ),
              Container(
                height:200 ,
                margin: const EdgeInsets.all(5),
                color: Colors.white,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(15),
                      width: 160,
                      height: 160,
                      child: const Image(
                          image: AssetImage('assets/Image.png')
                      ),),
                    Row(
                      children: [

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                              height: 30,
                            ),
                            Text('@personas #Temas',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),),
                            Text('Titulo de la noticia',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),),
                            Text('Description noticia'),
                            Text('Description noticia')

                          ],
                        )

                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.account_circle,
                              color: Colors.grey,
                              size: 40,
                            )

                          ],
                        )

                      ],
                    ),

                  ],
                ),
              ),
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