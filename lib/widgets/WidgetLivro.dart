import 'package:flutter/material.dart';

class WidgetLivro extends StatelessWidget {

  String imageUrl = "https://images-na.ssl-images-amazon.com/images/I/61YLgXD-zZL.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 250,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              child: Image.network(
                imageUrl,
                //fit: BoxFit.fill,
                //width: 200,
              ),
            )
          ), 
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 200,
              height: 220,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 20
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Text("A Canção de Aquiles", 
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ) 
                    )
                  ),
                  Text("Madeline Miller", 
                    style: 
                      TextStyle(
                        color: Colors.grey,
                        fontSize: 16
                      ),
                    ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.arrow_forward_ios, color: Colors.grey)
                  )
              ],)
            ),
          )
        ],
      ),
    );
  }
}
