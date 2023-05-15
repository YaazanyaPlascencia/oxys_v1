import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AppBar, BottomNavigationBar, BottomNavigationBarType, BuildContext, Colors, Container, EdgeInsets, Icon, IconButton, Icons, InputBorder, InputDecoration, Key, MainAxisAlignment, MainAxisSize, Scaffold, SingleChildScrollView, SizedBox, State, StatefulWidget, Text, TextFormField, TextStyle, Widget;

class CommonTask extends StatefulWidget {
  const CommonTask ({Key? key}) : super(key: key);
  @override
  _CommonTaskState createState() => _CommonTaskState ();
}
class _CommonTaskState extends State<CommonTask> {
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
            Text('\t \t \t \t \t  Projects',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
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
        child:
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children:  [
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
              ),
              const SizedBox(height: 30,),
              Container(
                color: Colors.white,
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text('\t Draft ####',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18
                    ),),
                    Container(
                      height:170 ,
                      color: Colors.white,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  const [
                                  Text('Project Name'),
                                  SizedBox(height: 5,),
                                      Text('PO No.'),
                                  SizedBox(height: 5,),
                                        Text('Customer'),
                                  SizedBox(height: 5,),
                                        Text('Site'),
                                  SizedBox(height: 5,),
                                  Text('Contact'),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  IconButton(
                                    onPressed: (){},
                                      icon:  const Icon(Icons.mark_email_unread_outlined,
                                          color: Colors.black,
                                          size: 35),
                                  ),
                                  const Text('  SOR',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                  const SizedBox(height: 5,),
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.share,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('Share \nPoint',
                                  style: TextStyle(
                                    fontSize: 12
                                  ),),
                                ],
                              )

                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.engineering,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('\tDEC',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                  const SizedBox(height: 5,),
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.playlist_remove_outlined,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('ISSUE',
                                  style: TextStyle(
                                    fontSize: 12
                                  ),),
                                ],
                              )

                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.rule,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('SCOPE',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                  const SizedBox(height: 10,),
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.add_shopping_cart_outlined,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('Procurement',
                                  style: TextStyle(
                                    fontSize: 10
                                  ),),
                                ],
                              )

                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.schema,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('WBS',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.precision_manufacturing,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('BOM',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                  const SizedBox(height: 5,),
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.balance,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('Balance',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                color: Colors.white,
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text('\t Draft ####',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                      ),),
                    Container(
                      height:170 ,
                      color: Colors.white,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  const [
                                  Text('Project Name'),
                                  SizedBox(height: 5,),
                                  Text('PO No.'),
                                  SizedBox(height: 5,),
                                  Text('Customer'),
                                  SizedBox(height: 5,),
                                  Text('Site'),
                                  SizedBox(height: 5,),
                                  Text('Contact'),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.mark_email_unread_outlined,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('  SOR',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                  const SizedBox(height: 5,),
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.share,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('Share \nPoint',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                ],
                              )

                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.engineering,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('\tDEC',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                  const SizedBox(height: 5,),
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.playlist_remove_outlined,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('ISSUE',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                ],
                              )

                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.rule,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('SCOPE',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                  const SizedBox(height: 10,),
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.add_shopping_cart_outlined,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('Procurement',
                                    style: TextStyle(
                                        fontSize: 10
                                    ),),
                                ],
                              )

                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.schema,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('WBS',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.precision_manufacturing,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('BOM',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                  const SizedBox(height: 5,),
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.balance,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('Balance',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                color: Colors.white,
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text('\t Draft ####',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                      ),),
                    Container(
                      height:170 ,
                      color: Colors.white,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  const [
                                  Text('Project Name'),
                                  SizedBox(height: 5,),
                                  Text('PO No.'),
                                  SizedBox(height: 5,),
                                  Text('Customer'),
                                  SizedBox(height: 5,),
                                  Text('Site'),
                                  SizedBox(height: 5,),
                                  Text('Contact'),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.mark_email_unread_outlined,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('  SOR',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                  const SizedBox(height: 5,),
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.share,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('Share \nPoint',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                ],
                              )

                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.engineering,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('\tDEC',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                  const SizedBox(height: 5,),
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.playlist_remove_outlined,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('ISSUE',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                ],
                              )

                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.rule,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('SCOPE',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                  const SizedBox(height: 10,),
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.add_shopping_cart_outlined,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('Procurement',
                                    style: TextStyle(
                                        fontSize: 10
                                    ),),
                                ],
                              )

                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.schema,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('WBS',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.precision_manufacturing,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('BOM',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                  const SizedBox(height: 5,),
                                  IconButton(
                                    onPressed: (){},
                                    icon:  const Icon(Icons.balance,
                                        color: Colors.black,
                                        size: 35),
                                  ),
                                  const Text('Balance',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ]
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

