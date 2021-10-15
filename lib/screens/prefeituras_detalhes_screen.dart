import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feneco_app/models/prefeituras_model.dart';

class PrefeiturasDetalhesScreen extends StatelessWidget {
  PrefeituraModel prefeituraModel;

  @override
  Widget build(BuildContext context) {
    prefeituraModel = ModalRoute.of(context).settings.arguments;

    final prefeituraStatus = Container(
      padding: const EdgeInsets.all(7.0),
      decoration: new BoxDecoration(
        border: new Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Center(
        child: new Text(
          prefeituraModel.status.toString(),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 60.0),
        Text(
          'Dados de Transparência',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
          ),
        ),
        Container(
          width: 300.0,
          child: new Divider(color: Colors.yellowAccent),
        ),
        SizedBox(height: 10.0),
        Text(
          prefeituraModel.nome,
          style: TextStyle(
            color: Colors.white,
            fontSize: 45.0,
          ),
        ),
        SizedBox(height: 22.7),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  prefeituraModel.intro,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: prefeituraStatus,
            ),
          ],
        ),
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10.0),
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("tcesp_logo.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, .9)),
          child: Center(
            child: topContentText,
          ),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        )
      ],
    );

    final bottomContentText = Text(
      prefeituraModel.conteudo,
      style: TextStyle(fontSize: 18.0),
      textAlign: TextAlign.center,
    );

    final bottomContent = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          children: <Widget>[
            bottomContentText,
          ],
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          topContent,
          bottomContent,
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(255, 185, 0, .9),
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
