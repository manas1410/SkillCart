import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:task_1_zairza/screens/widget.dart';

import '2_A.dart';
import '7.dart';
class Page2B extends StatefulWidget{
  const Page2B({Key? key}) : super(key: key);

  @override
  _Page2BState createState() => _Page2BState();
}
class _Page2BState extends State<Page2B>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        appBar: skillappbar(context),
        bottomNavigationBar: DemoBottomAppBar(),
        body: Column(
          children: <Widget>[
            Row(
              children: [
                SizedBox(height: 70,),
                Text(
                  "    View   ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20,color:Colors.black),
                ),
                SizedBox(width:200),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                    ),
                    child: IconButton(
                      iconSize: 10.0,
                      icon:  Icon(Icons.grid_on_outlined,color: Colors.black,size: 30),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              duration: Duration(milliseconds: 6),
                              type: PageTransitionType.rightToLeft,
                              child: Page2A(),
                              inheritTheme: true,
                              ctx: context),
                        );
                      },
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                    ),
                    child: IconButton(
                      iconSize: 10.0,
                      icon:  Icon(Icons.list_outlined,color: Colors.black,size: 30),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              duration: Duration(milliseconds: 6),
                              type: PageTransitionType.rightToLeft,
                              child: Page2B(),
                              inheritTheme: true,
                              ctx: context),
                        );
                      },
                    )
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page7(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left:20,bottom: 20,right: 20),
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow:  [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(1),
                                    spreadRadius: 5,
                                    blurRadius: 0,
                                    offset: Offset(0, 1), // changes position of shadow
                                  ),
                                ],
                                border: Border.all(
                                  color: Colors.white,
                                  width: 13,
                                ),
                              ),
                              child: Row(
                                children:<Widget>[
                                  Image(image: AssetImage('assets/images/imagefull.png'),),
                                  Column(
                                    children: [
                                      Padding(padding:EdgeInsets.only(left:10,bottom: 10),
                                          child: Column(
                                            children: [
                                              Text('Laptop',style: TextStyle(fontSize: 28,color:Colors.black),),],)),
                                      Text('Zairza',
                                        style: TextStyle(fontSize: 10,color:Colors.black),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 30,),
                                      Text("\$3000",style: TextStyle(fontSize: 20,color:Colors.black),)
                                    ],
                                  )


                                ],
                              )

                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),

        );

  }
}