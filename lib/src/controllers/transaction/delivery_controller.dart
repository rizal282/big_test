import 'package:big_test/src/constant/url_constant.dart';
import 'package:big_test/src/models/transaction/delivery_model.dart';
import 'package:big_test/src/services/service_api.dart';

class DeliveryController {
  static Future<List<DeliveryModel>> delivery(
      Map<String, dynamic> mapBody) async {
    List<DeliveryModel> dataDelivery = [];

    try {
      final result =
          await ServiceApi.postData(UrlConstant.urlDetailDelivery, mapBody);

      for (int i = 0; i < result.length; i++) {
        dataDelivery.add(DeliveryModel(
            idOrder: result[i]['id_order'].toString(),
            kotaAsal: result[i]['kab_asal'],
            kotaTujuan: result[i]['kab_tujuan'],
            tanggalKirim: result[i]['tgl_pengiriman'],
            statusKirim: result[i]['status_pengiriman'],
            jenisTruk: result[i]['jenis_kendaraan']));
      }

      return dataDelivery;
    } catch (e) {
      return [];
    }
  }
}
