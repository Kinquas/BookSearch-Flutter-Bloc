import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:appteste/widgets/WidgetLivro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categorias = [
    "Fantasia", "YA", "Terror", "Romance", "Histórico", "Ficção Científica"
  ];

  List<String> temp = [
    "A canção de Aquiles", "A forma da Água", "IT: A Coisa", "Diário de Anne Frank", "Tartarugas até lá embaixo", "Will & Will"
  ];

  int _selectedIndex = 0;

  @override
  void initState(){
    SystemChrome.setEnabledSystemUIOverlays([]); //Aplicativo toma espaço da tela toda
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 42, left: 24),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only( 
                      right: 24
                    ),
                    child: Text("Explorar",
                        style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text("Recomendado",
                    style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400]
                    ),
                  )
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: ListView.builder(
                shrinkWrap: true,
                itemCount: categorias.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext c, int index){
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 6, right: 6
                      ),
                    child: GestureDetector(  
                      onTap: (){
                        _selectedIndex = index;
                        setState((){});
                      },
                      child: Chip(
                        padding: EdgeInsets.only(
                          left: 8, right: 8
                        ),
                        backgroundColor: index == _selectedIndex ? Colors.blue : Colors.grey[200],
                        label: Text(categorias.elementAt(index),
                          style: TextStyle(
                            color: index == _selectedIndex ? Colors.white : Colors.grey[500],
                            fontSize: 16
                          ),
                        ),  
                      ),
                    ),
                  );
                },
              ),
            ),
            ListView.builder(
                itemCount: temp.length,
                shrinkWrap: true,
                itemBuilder: (context, index){
                  return WidgetLivro();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}