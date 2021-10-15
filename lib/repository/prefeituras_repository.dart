import 'package:feneco_app/models/prefeituras_model.dart';

import 'database.dart';

class PrefeituraRepository {
  Future<List<PrefeituraModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<PrefeituraModel> prefeituras = new List<PrefeituraModel>();

    if (db.created) {
      prefeituras = new List<PrefeituraModel>();
      prefeituras.add(
        new PrefeituraModel(
          id: 1,
          nome: 'Guarulhos',
          intro: 'Status do último arquivo (03/06/2021):',
          status: 'Enviado',
          conteudo:
              'O arquivo enviado estava dentro dos padrões de preenchimento e a carga foi realizada com sucesso!',
        ),
      );
      prefeituras.add(
        PrefeituraModel(
          id: 2,
          nome: 'Campinas',
          intro: 'Status do último arquivo (01/06/2021):',
          status: 'Rejeitado',
          conteudo:
              'A tentativa de upload do arquivo falhou pois não estava dentro dos padrões de preenchimento. Revise o arquivo e tente novamente!',
        ),
      );
      prefeituras.add(
        PrefeituraModel(
          id: 3,
          nome: 'São Bernardo do Campo',
          intro: 'Status do último arquivo (05/06/2021):',
          status: 'Enviado',
          conteudo:
              'O arquivo enviado estava dentro dos padrões de preenchimento e a carga foi realizada com sucesso!',
        ),
      );
      prefeituras.add(
        PrefeituraModel(
          id: 4,
          nome: 'Santo André',
          intro: 'Status do último arquivo (03/06/2021):',
          status: 'Enviado',
          conteudo:
              'O arquivo enviado estava dentro dos padrões de preenchimento e a carga foi realizada com sucesso!',
        ),
      );
      prefeituras.add(
        PrefeituraModel(
          id: 5,
          nome: 'Ribeirão Preto',
          intro: 'Status do último arquivo (06/06/2021):',
          status: 'Rejeitado',
          conteudo:
              'A tentativa de upload do arquivo falhou pois não estava dentro dos padrões de preenchimento. Revise o arquivo e tente novamente!',
        ),
      );
      prefeituras.add(
        PrefeituraModel(
          id: 6,
          nome: 'Osasco',
          intro: 'Status do último arquivo (01/06/2021):',
          status: 'Rejeitado',
          conteudo:
              'A tentativa de upload do arquivo falhou pois não estava dentro dos padrões de preenchimento. Revise o arquivo e tente novamente!',
        ),
      );
      prefeituras.add(
        PrefeituraModel(
          id: 7,
          nome: 'Sorocaba',
          intro: 'Status do último arquivo (05/06/2021):',
          status: 'Enviado',
          conteudo:
              'O arquivo enviado estava dentro dos padrões de preenchimento e a carga foi realizada com sucesso!',
        ),
      );
    }

    return new Future.value(prefeituras);
  }
}
