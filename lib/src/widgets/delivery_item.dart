import 'package:big_test/src/views/transaction/detail_order.dart';
import 'package:flutter/material.dart';

class DeliveryItem extends StatelessWidget {
  DeliveryItem(
      {Key? key,
      required this.kotaAsal,
      required this.kotaTujuan,
      required this.statusKirim,
      required this.tanggalKirim,
      required this.jenisTruck})
      : super(key: key);

  late String kotaAsal, kotaTujuan, statusKirim, tanggalKirim, jenisTruck;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(kotaAsal),
              const Text('-'),
              Text(kotaTujuan),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text('Status: $statusKirim'),
          const SizedBox(
            height: 8,
          ),
          Text('Tanggal Pengiriman: $tanggalKirim'),
          const SizedBox(
            height: 8,
          ),
          Text('Jenis Truck: $jenisTruck'),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DetailOrder()));
              },
              child: const Text('Detail'))
        ],
      ),
    );
  }
}
