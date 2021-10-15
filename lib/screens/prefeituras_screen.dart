import 'package:flutter/material.dart';
import 'package:feneco_app/models/prefeituras_model.dart';
import 'package:feneco_app/repository/prefeituras_repository.dart';
import 'package:feneco_app/screens/prefeituras_detalhes_screen.dart';

class PrefeiturasScreen extends StatefulWidget {
  @override
  _PrefeiturasScreenState createState() => _PrefeiturasScreenState();
}

class _PrefeiturasScreenState extends State<PrefeiturasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 185, 0, .9),
        title: Text("Prefeituras"),
      ),
      body: FutureBuilder<List<PrefeituraModel>>(
        future: PrefeituraRepository().findAllAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return buildListView(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  ListView buildListView(List<PrefeituraModel> prefeituras) {
    return ListView.builder(
      itemCount: prefeituras == null ? 0 : prefeituras.length,
      itemBuilder: (BuildContext ctx, int index) {
        return cardPrefeitura(prefeituras[index]);
      },
    );
  }

  Card cardPrefeitura(PrefeituraModel prefeituras) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 12.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 6.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: new Border.all(color: Colors.deepOrangeAccent),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
              border: new Border(
                right: new BorderSide(
                  width: 1.0,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
            child: Image.asset('sp.png'),
          ),
          title: Text(
            prefeituras.nome,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
            size: 30.0,
          ),
          onTap: () {
            Navigator.pushNamed(
              context,
              "/prefeituras_detalhes",
              arguments: prefeituras,
            );
          },
        ),
      ),
    );
  }
}
