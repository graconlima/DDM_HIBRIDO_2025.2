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
}*/

//Responsividade
//Exemplo 9: MediaQuery
/*void main(){
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget {
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.blueGrey,
      width: double.infinity,
      height: 200,
      child: Center(
        child: Text(
          largura < 600
              ? 'Tela pequena'
              : 'Tela grande',
          style: TextStyle(color: Colors.white, fontSize: (altura > 100) ? 30 : 10),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}*/

//Exemplo 10: LayoutBuilder
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
         LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 1000) {
              return Column(
                children: [
                  Icon(Icons.phone_android, size: 100),
                  Text('Layout em coluna', textDirection: TextDirection.ltr),
                ]
              );
            } else {
              return Row(
                children: [
                  Icon(Icons.desktop_mac, size: 100),
                  Text('Layout em linha', textDirection: TextDirection.ltr),
                ]
              );
            }
          },
        )
      )
    );
  }
}*/

//Exemplo 11: OrientationBuilder
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
        OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.portrait
            ? Column(
              children: [Icon(Icons.image), Text('Retrato')],
              )
            : Row(
              children: [Icon(Icons.image), Text('Paisagem')],
              );
          },
        )
      )
    );
  }
}*/

//Exemplo 12: GridView
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
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: List.generate(6, (index) {
                return Container(
                  color: Colors.blueGrey[100 * (index % 9)],
                  child: Center(child: Text('Item $index')),
                );
              }),
            )
        )
    );
  }
}*/


//Exemplo 13: Slaver
/*void main(){
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
        title: "Ola Mundo!",
        home:
        Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text('Galeria'),
                  background: Image.asset('assets/header.jpg', fit: BoxFit.cover),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(

                      (context, index) => ListTile(title: Text('Item $index')),
                  childCount: 30,
                ),
              ),
            ],
          ),
        )
    );
  }
}*/

//Exemplo 14: Reutilizacao Adaptativa
void main(){
  runApp(MinhaApp(
      items: List<String>.generate(
          10,
          (i){return "Item: "+i.toString();}
      )
  )
  );
}
class MinhaApp extends StatelessWidget {
  final List<String> items;
  MinhaApp({required this.items});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: "Ola Mundo!",
      home: Scaffold(
      appBar: AppBar(title: Text("OlaApp")),
      body:
        width < 600
        ? ListView(
          children: items.map((e) => Card(child: Text(e, textDirection: TextDirection.ltr,))).toList(),
          )
        : GridView.count(
          crossAxisCount: 3,
          children: items.map((e) => Card(child: Text(e, textDirection: TextDirection.ltr))).toList(),
          )
      )
    );
  }

}
