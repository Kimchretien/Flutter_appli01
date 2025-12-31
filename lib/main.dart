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
      appBar: AppBar(title: Text("column"),elevation: 16,centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("hello"),
          Text("bonjour"),
          Image.network("data:image/jpeg;base64,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",width: 200,),
          Text("ciao"),
        ],
      )
    );
  }
}

<<<<<<< HEAD
//      floatingActionButton: Column(
//   mainAxisSize: MainAxisSize.min,//pour que la colonne prenne la taille minimale necessaire
//   children: [  //ajout des boutons dans une colonne
//     FloatingActionButton(
//       heroTag: "btnAdd",  //pour identifier chaque bouton flottant de maniere unique
//       onPressed: () {
//         setState(() {
//           counter++;
//         });
//       },
//       child: Icon(Icons.add),
//     ),
//     SizedBox(height: 10),
//     FloatingActionButton(
//       heroTag: "btnRemove",
//       onPressed: () {
//         setState(() {
//           counter--;
//         });
//       },
//       child: Icon(Icons.remove),
//     ),
//     SizedBox(height: 10),
//     FloatingActionButton(
//       heroTag: "btnReset",
//       onPressed: () {
//         setState(() {
//           counter = 0;
//         });
//       },
//       child: Icon(Icons.refresh),
//     ),
//   ],
// ),


//  Container(
  
//         alignment: Alignment.topLeft,
//         padding: EdgeInsets.only(top: 50,left: 30,right: 90,bottom: 10), //espsace interne //couleur de fond
//         margin: EdgeInsets.all(20), //espace externe
//         height: 200, //hauteur du container
//         width: 300, //largeur du container
//         decoration: BoxDecoration(

//           color: Colors.blue, //couleur de fond
//           borderRadius: BorderRadius.circular(12), //bordure arrondie
//         ),
//               child: Text(
//     'Compteur : $counter\n${getMessage()}',
//   textAlign: TextAlign.center,
//   style: TextStyle(
//     fontSize: 24,
//     color: getColor(),
//   ),
// ),   
//       ),

      

=======
>>>>>>> d6dec6c2572ac2ef0758a289309d7fd917d1fada
