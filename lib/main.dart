 import 'package:flutter/material.dart';


void main() {
  // Entry point of the application
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}




class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<HomePage> createState() => HomePageState();
  //ou createState(){ return HomePageState();} 
}

 

class HomePageState extends State<HomePage> {

  int counter = 0;

  String getMessage() {
  if (counter == 0) {
    return "Valeur initiale";
  } else if (counter > 0) {
    return "Valeur positive";
  } else {
    return "Valeur négative";
  }
}


 Color getColor() {
  if (counter == 0) {
    return const Color.fromARGB(255, 12, 12, 12);
  } else if (counter > 0) {
    return Colors.green;
  } else {
    return Colors.red;
  }
}


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Appli"),elevation: 16,centerTitle: true,),
      body: Center(
        child: Text(
  'Compteur : $counter\n${getMessage()}',
  textAlign: TextAlign.center,
  style: TextStyle(
    fontSize: 24,
    color: getColor(),
  ),
),

      ),
     floatingActionButton: Column(
  mainAxisSize: MainAxisSize.min,//pour que la colonne prenne la taille minimale necessaire
  children: [  //ajout des boutons dans une colonne
    FloatingActionButton(
      heroTag: "btnAdd",  //pour identifier chaque bouton flottant de maniere unique
      onPressed: () {
        setState(() {
          counter++;
        });
      },
      child: Icon(Icons.add),
    ),
    SizedBox(height: 10),
    FloatingActionButton(
      heroTag: "btnRemove",
      onPressed: () {
        setState(() {
          counter--;
        });
      },
      child: Icon(Icons.remove),
    ),
    SizedBox(height: 10),
    FloatingActionButton(
      heroTag: "btnReset",
      onPressed: () {
        setState(() {
          counter = 0;
        });
      },
      child: Icon(Icons.refresh),
    ),
  ],
),

    );
  }
}

