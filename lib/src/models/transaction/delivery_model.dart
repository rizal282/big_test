class DeliveryModel {
  late String idOrder,
      kotaAsal,
      kotaTujuan,
      tanggalKirim,
      statusKirim,
      jenisTruk;

  DeliveryModel(
      {required this.idOrder,
      required this.kotaAsal,
      required this.kotaTujuan,
      required this.tanggalKirim,
      required this.statusKirim,
      required this.jenisTruk});

  // DeliveryModel.fromJson(Map<String, dynamic> json) {
  //   idOrder = json['id_order'].toString();
  //   kotaAsal = json['kab_asal'];
  //   kotaTujuan = json['kab_tujuan'];
  //   tanggalKirim = json['tgl_pengiriman'];
  //   statusKirim = json['status_pengiriman'];
  //   jenisTruk = json['jenis_kendaraan'];
  // }
}
