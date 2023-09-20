import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: cat(),
  )
  );
}
int num=0;
class cat extends StatefulWidget {
  const cat({super.key});

  @override
  State<cat> createState() => _catState();
}

class _catState extends State<cat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("counter"),
      ),
      body: Center(
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(onPressed: () {
              setState(() {
                num--;
                if(num<0){
                  num=0;
                }
              });
            },child: Icon(Icons.remove),
            ),
            Text("${num}"),
            FloatingActionButton(onPressed: (){
              setState(() {
                num++;
              });
            },
              child: Icon(Icons.add),),
          ],
        ),

      )
    );
  }
}
