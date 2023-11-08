import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Obx(
                  () => Text('Status: ${controller.status.value.name}'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () => controller.getData(),
                  child: const Text('get data'),
                ),
                Obx(() => ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.cars.length,
                      itemBuilder: (context, index) {
                        var curCar = controller.cars[index];
                        return GestureDetector(
                          onTap: () => Get.toNamed('car', arguments: curCar),
                          child: Card(
                            elevation: 5,
                            color: Color.fromARGB(255, 198, 230, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListTile(
                              leading: Text(curCar.id.toString()),
                              title: Text(
                                  '${curCar.brand}, ${curCar.model} : ${curCar.color}'),
                              subtitle: Text(curCar.price.toString()),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (curCar.availability)
                                    const Icon(
                                      Icons.check_box,
                                      size: 30,
                                      color: Color.fromARGB(255, 34, 251, 164),
                                    )
                                  else
                                    const Icon(Icons.close_rounded,
                                        size: 30,
                                        color:
                                            Color.fromARGB(255, 255, 104, 159)),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
