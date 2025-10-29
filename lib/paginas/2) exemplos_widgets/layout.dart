import 'package:flutter/material.dart';

//Exemplo 1: Layout para aplicativo não Material
/*void main(){
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return Center(child: Text("Ola Mundo", textDirection: TextDirection.ltr));
  }
}*/

//Exemplo 2: Container (parametros)
/*void main(){
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        'Caixa decorada',
        style: TextStyle(color: Colors.white),
        textDirection: TextDirection.rtl,
      ),
    );
  }
}*/

//Exemplo 3: Layout para aplicativo Material
/*void main(){
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
        title: "Ola Mundo!",
        home: Scaffold(
            appBar: AppBar(title: Text("OlaApp")),
            body: Center(child: Text("Ola Mundo"))
        )
    );
  }
}*/

//Exemplo 4: Row e Column
/*void main(){
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
        title: "Ola Mundo!",
        home: Scaffold(
            appBar: AppBar(title: Text("OlaApp")),
            body:
            // Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Icon(Icons.star, color: Colors.amber),
            //       Icon(Icons.star, color: Colors.amber),
            //       Icon(Icons.star, color: Colors.amber),
            //     ])

            // Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     mainAxisSize: MainAxisSize.max,
            //     children: [
            //       Icon(Icons.star, color: Colors.amber),
            //       Icon(Icons.star, color: Colors.amber),
            //       Icon(Icons.star, color: Colors.amber),
            //     ])
        )
    );
  }
}*/

//Exemplo 5: Expanded e Flexible
/*void main(){
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
        title: "Ola Mundo!",
        home: Scaffold(
            appBar: AppBar(title: Text("OlaApp")),
            body:
            Row(
              children: [
                // Expanded(flex: 1, child: Container(color: Colors.red)),
                // Expanded(flex: 2, child: Container(color: Colors.green)),
                // Expanded(flex: 1, child: Container(color: Colors.blue)),

                // Flexible(flex: 1, child: Container(color: Colors.red)),
                // Flexible(flex: 2, child: Container(color: Colors.green)),
                // Flexible(flex: 1, child: Container(color: Colors.blue)),
              ],
            )
        )
    );
  }
}*/

// Exemplo 6: Padding, Align e SizedBox
/*void main(){
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
        title: "Ola Mundo!",
        home: Scaffold(
            appBar: AppBar(title: Text("OlaApp")),
            body:
            // Padding(
            //   padding: EdgeInsets.all(10),
            //   child: Text('Com espaçamento interno'),
            // )

            // Align(
            //   alignment: Alignment.bottomRight,
            //   child: Icon(Icons.send, color: Colors.blue),
            // )

            //Row(
            // Column(
            //   children: [
            //     Icon(Icons.star),
            //     SizedBox(width: 10),
            //     Icon(Icons.star),
            //     SizedBox(width: 10, height: 100),
            //     Icon(Icons.star),
            //   ]
            // )
        )
    );
  }
}*/

//Exemplo 7: Stack e Positioned
/*void main(){
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
        title: "Ola Mundo!",
        home: Scaffold(
            appBar: AppBar(title: Text("OlaApp")),
            body:
            Stack(
              children: [
                Container(color: Colors.blue),
                Positioned(
                  left: 50,
                  bottom: 100,
                  child: Icon(Icons.star, color: Colors.yellow),
                ),
              ],
            )
        )
    );
  }
}*/

//Exemplo 8: ListView
void main(){
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
        title: "Ola Mundo!",
        home: Scaffold(
            appBar: AppBar(title: Text("OlaApp")),
            body:
            // ListView(
            //   padding: EdgeInsets.all(8),
            //   children: [
            //     Container(color: Colors.amber, height: 100),
            //     Container(color: Colors.indigo, height: 100),
            //     Container(color: Colors.green, height: 100),
            //     Container(color: Colors.amber, height: 100),
            //     Container(color: Colors.indigo, height: 100),
            //     Container(color: Colors.green, height: 100),
            //     Container(color: Colors.amber, height: 100),
            //     Container(color: Colors.indigo, height: 100),
            //     Container(color: Colors.green, height: 100),
            //   ],
            // )

            ListView.builder(
              itemCount: 1000,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Usuário $index'),
                );
              },
            )
        )
    );
  }
}