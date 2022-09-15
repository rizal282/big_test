import 'package:big_test/src/controllers/transaction/delivery_controller.dart';
import 'package:big_test/src/models/transaction/delivery_model.dart';
import 'package:big_test/src/services/service_api.dart';
import 'package:big_test/src/widgets/delivery_item.dart';
import 'package:flutter/material.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  List<DeliveryModel> listDataDelivery = [];

  void setDataDelivery() async {
    final getListDelivery = await DeliveryController.delivery(
        {"limit": 10, "offset": 1, "param": 1});

    setState(() {
      listDataDelivery = getListDelivery;
    });
  }

  @override
  void initState() {
    super.initState();

    setDataDelivery();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pengiriman'), centerTitle: true),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            DeliveryItem(
              kotaAsal: 'Jakarta',
              kotaTujuan: 'Semarang',
              statusKirim: 'Dalam Perjalanan',
              tanggalKirim: '21/09/2021',
              jenisTruck: 'Type-1',
            )
          ],
        ),
      ),
    );
  }
}
