import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zakysoft/controller/home_controller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final HomeController controller = Get.put(HomeController());
  String select = '';
  String Sar = 'SAR  ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.red[800],
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(8),
            child: Icon(
              Icons.search,
              color: Colors.red[800],
            ),
          ),
        ],
        title: Image.asset(
          'assets/tomato.jpg',
          height: 30,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          topCategory(),
          const SizedBox(
            height: 10,
          ),
          subCategory(),
          bottomList()
        ],
      ),
    );
  }

  GetBuilder<HomeController> bottomList() {
    return GetBuilder<HomeController>(builder: ((controller) {
      return Expanded(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: controller.allproduct.length,
            itemBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.only(top: 5),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Image.asset('assets/tomato.jpg'),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 150,
                            child: Text(
                              controller.allproduct[index]['name'],
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            controller.allproduct[index]['sort_price']
                                    .toString() +
                                Sar,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 175,
                            child: Text(
                              controller.allproduct[index]['name_arabic']
                                  .toString(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ],
                  ));
            }),
      );
    }));
  }

  GetBuilder<HomeController> subCategory() {
    return GetBuilder<HomeController>(builder: ((controller) {
      return controller.subcategoryList.isNotEmpty
          ? Container(
              height: 50,
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.subcategoryList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        controller
                            .products(controller.subcategoryList[index].id);
                      },
                      child: Container(
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(color: Colors.black)),
                        margin: const EdgeInsets.only(
                            right: 10, left: 10, top: 5, bottom: 5),
                        height: 30,
                        child: Center(
                            child:
                                Text(controller.subcategoryList[index].name)),
                      ),
                    );
                  }))
          : const SizedBox(
              height: 600,
              child: Center(
                  child: Text(
                'click any category',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )),
            );
    }));
  }

  GetBuilder<HomeController> topCategory() {
    return GetBuilder<HomeController>(builder: ((controller) {
      return SizedBox(
        height: 50,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.categoryList.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:
                        select == controller.categoryList[index].id.toString()
                            ? Colors.green
                            : Colors.white,
                    border: Border.all(color: Colors.black)),
                margin: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 5),
                height: 70,
                width: 110,
                child: Center(
                    child: GestureDetector(
                        onTap: (() {
                          select = controller.categoryList[index].id.toString();
                          controller
                              .subcategories(controller.categoryList[index].id);
                          controller
                              .allProducts(controller.categoryList[index].id);
                        }),
                        child: Center(
                            child: Text(controller.categoryList[index].name)))),
              );
            }),
      );
    }));
  }
}
