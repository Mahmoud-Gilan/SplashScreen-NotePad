import 'package:flutter/material.dart';
import 'package:splash_note_app/share/compon.dart';

void main(){
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,//use MaterialApp() widget like this
        home: Home() //create new widget class for this 'home' to
      // escape 'No MediaQuery widget found' error
    );
  }
}

//create new class for "home" property of MaterialApp()
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'NotePad',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ),
            ),
           Container(
             height: 35,
               child: MyTextFormField(labelText: 'Search notes', prefixIcon: Icons.search, padding: (35.0), keyboardType: TextInputType.text,)),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[200],
                       borderRadius: BorderRadius.circular(20),),
                       height: 75,
                       width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Todays grocery list',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        ' june 26,2022 08:05 pm',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellowAccent[100],
                  borderRadius: BorderRadius.circular(20),),
                height: 75,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rich dad poor dad quotes',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        ' june 22,2022 05:00 pm',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},

        backgroundColor: Colors.yellow[600],
        child: const Icon(Icons.add,color: Colors.black,),
      ),
    );
  }
}