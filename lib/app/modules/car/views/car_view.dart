import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/car_controller.dart';

class CarView extends GetView<CarController> {
  const CarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 198, 230, 255),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Information:',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 8,
          ),
           Text(
            'id: ${controller.car.id.toString()}',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'Brand: ${controller.car.brand.toString()}',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'Model: ${controller.car.model.toString()}',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'Color:${controller.car.color.toString()}',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'Price: ${controller.car.price.toString()}\$',
            style: TextStyle(fontSize: 24),
          )
        ]),
      ),
    );
  }
}
