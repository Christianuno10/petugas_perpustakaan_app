import 'package:peminjam_perpustakaan_app/app/data/provider/api_provider.dart';
import 'package:peminjam_perpustakaan_app/app/data/provider/storage_provider.dart';

class Endpoint {
  static const String baseUrlApi = "https://api-perpustakaan.abadjayasenantiasa.com/api/v1/petugas/";


  static const String login = "${baseUrlApi}login";
  static const String book = "${baseUrlApi}book";
  final response = await ApiProvider.instance().get("${Endpoint.pinjam}/${StorageProvider.read(StorageKey.idUser)}"
}
