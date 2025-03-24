
import 'package:flutter/material.dart';
import 'package:project_nassau/app_controller.dart';
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State <HomePage>{
  int counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Together"),
        actions: [
          CustomSwitch()
        ],
      ),

    body: Stack(
      children: [
        SizedBox(
          child: Image.asset('imagens/tela.jpeg',
          width: double.infinity,
          height: double.infinity,
          
        
        ),
      ),
      
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Contador: $counter'),
          CustomSwitch(),
       ],
            ),
          ),
        ],
      ),
      

      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
              counter++;
            });
         },
        ),
      );
    }
}


class CustomSwitch extends StatelessWidget{
  const CustomSwitch({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Switch
        (value: AppController.instance.isDArtTheme, 
        onChanged: (value){
          AppController.instance.changeTheme();
  },);

  }
}