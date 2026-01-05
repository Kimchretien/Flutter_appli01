 import 'package:flutter/material.dart';


void main() {
  // Entry point of the application
  runApp( MaterialApp(
    home: HomePage(),
  ));
}




// class HomePage extends StatefulWidget{
//   const HomePage({super.key});
//   @override
//   State<HomePage> createState() => HomePageState();
//   //ou createState(){ return HomePageState();} 
// }

 

class HomePage extends StatelessWidget{
  HomePage({super.key});

  final images = [
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("column"),elevation: 16,centerTitle: true,),
      body: ListView.separated(
        itemCount: images.length,
        itemBuilder: (context,index){
          return Container(
            margin: EdgeInsets.all(10),
            child: Image.network(images[index])
          );
        },
        separatorBuilder: (context,index){
          return Divider(
            color: Colors.blue,
            thickness: 2, //epaisseur du diviseur
          );
        },
      )

      // ListView.builder(
      //   itemCount: images.length,
      //   itemBuilder: (context,index){
      //     return Container(
      //       margin: EdgeInsets.all(10),
      //       child: Image.network(images[index])
      //     );
      //   },
      // )
      );
  }
}
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

      


