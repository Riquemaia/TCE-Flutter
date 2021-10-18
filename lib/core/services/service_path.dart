import 'package:feneco_fiap_tce_app/core/exceptions/service_path_exception.dart';
import 'package:feneco_fiap_tce_app/core/utils/constants.dart';

enum ServicePath { DESPESA, DESPESAANUAL, MUNICIPIO, BASEURL }

extension ServicePathExtension on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.BASEURL:
        return kUrlBase;
      case ServicePath.MUNICIPIO:
        return kUrlMunicipio;
      case ServicePath.DESPESAANUAL:
        return kUrlDespesaAnual;
      case ServicePath.DESPESA:
        return kUrlDespesa;
      default:
        throw ServicePathException(this);
    }
  }
}
