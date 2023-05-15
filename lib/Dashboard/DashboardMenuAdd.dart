import 'package:flutter/material.dart';
import 'package:oxys/GeneralScreen/NewCard.dart';
import 'package:oxys/GeneralScreen/NewRecord.dart';
import 'package:oxys/GeneralScreen/NewContact.dart';
class DashboardMenu extends StatefulWidget {
  const DashboardMenu({Key? key}) : super(key: key);

  @override
  _DashboardMenu createState() => _DashboardMenu();
}
class _DashboardMenu extends State<DashboardMenu> {
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
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
            height: 300,
            color: Colors.grey[300],
            child : Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 40,),
                    IconButton(onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(
                      //builder: (context) => const NewLead())
                      //);
                    },
                      icon: const Icon(Icons.credit_score,
                        size: 50,),),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SizedBox(width: 40,height: 50),
                    Text('\t Approval \n expenses',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(
                        //builder: (context) => const NewLead())
                    //);
                  },
                      icon: const Icon(Icons.chat,
                        size: 50,),),
                    IconButton(onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(
                        //builder: (context) => const ExpenseReport())
                    //);
                  },
                        icon: const Icon(Icons.receipt,
                          size: 50,)),
                    IconButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const NewContactForm())
                      );
                  },
                        icon: const Icon(Icons.pending_actions,
                          size: 50,)),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('\n\t\t\t\t New Lead',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                    Text('\n New Expanse Report', style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                    ),
                    Text('\n Approve Time Reports',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const NewCardForm())
                    );
                    },
                      icon: const Icon(Icons.add_card,
                        size: 50,),),
                    IconButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const NewTimeRecordForm())
                    );
                      },
                        icon: const Icon(Icons.timer,
                          size: 50,)),
                    IconButton(onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(
                        //builder: (context) => const NewPurchase())
                  //  );
                  },
                        icon: const Icon(Icons.shopping_cart,
                          size: 50,)),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('\n \t \t \t\t \t New Card',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                    Text('\n \t\t\t \t\tTime Record',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                    Text('\n Purchase Request',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )


    );
  }
}