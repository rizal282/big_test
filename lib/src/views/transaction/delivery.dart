import 'package:big_test/src/controllers/transaction/delivery_controller.dart';
import 'package:big_test/src/models/transaction/delivery_model.dart';
import 'package:big_test/src/services/service_api.dart';
import 'package:flutter/material.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  List<DeliveryModel> listDataDelivery = [];

  void setDataDelivery() async {
    // Map<String, dynamic> params = {"id_order": 2574};
    // final getListDelivery = await DeliveryController.delivery(
    //     {"limit": 10, "offset": 1, "param": 1});

    ServiceApi.postData("Driver/listBursaPengirimanDriver",
        {"limit": 10, "offset": 1, "param": 1}).then((value) {
      try {
        print("success get data $value");
      } catch (e) {
        print("success get data => $e");
      }
    });
    // setState(() {
    //   listDataDelivery = getListDelivery;
    // });

    // print(listDataDelivery);
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
    );
  }
}
