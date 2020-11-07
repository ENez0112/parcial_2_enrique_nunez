import 'package:flutter/material.dart';
import 'api.dart';
import 'frase.dart';

void main() => runApp(Parcial());

class Parcial extends StatelessWidget {
  const Parcial({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Enrique_Núñez",
      debugShowCheckedModeBanner: false,
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  final TextEditingController luckyCont = TextEditingController();
  Api api = Api();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MAGIC - Enrique Núñez",
          style: TextStyle(color: Color(0xfffcc434)),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.lime,
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                  child: Image(
                    image: NetworkImage(
                        "https://cdn.shopify.com/s/files/1/1061/1924/products/Crystal_Magic_Ball_grande.png?v=1571606035"),
                  ),
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Future<Frase> x = api.getFrase();
                    },
                    child: Text(
                      "Lucky",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  height: 150,
                  width: 300,
                  padding: EdgeInsets.only(top: 50.0, left: 7.0, right: 7.0),
                  child: TextField(
                    controller: luckyCont,
                    minLines: 2,
                    maxLines: 4,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintText: "Suerte",
                      border: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
