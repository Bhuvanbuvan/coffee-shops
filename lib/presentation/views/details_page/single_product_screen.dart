import 'package:coffee_shope/core/utils/app_color.dart';
import 'package:coffee_shope/core/utils/widgets/app_button.dart';
import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  const SingleProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: AppColor.primaryColor,
        title: const Text(
          "Details",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            iconSize: 34,
            color: Colors.white,
            icon: const Icon(Icons.thumb_up_alt_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/coffee1.png",
                      width: 300,
                      height: 200,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Cappuchino",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "chiaro",
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star_outlined, color: Colors.amber, size: 24),
                      Text(
                        "4.5",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("(230)"),
                    ],
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      CoffeeChoice(iconUrl: "assets/icons/bean.png"),
                      CoffeeChoice(iconUrl: "assets/icons/milk.png"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  RichText(
                    // Controls visual overflow
                    overflow: TextOverflow.clip,

                    // Controls how the text should be aligned horizontally
                    textAlign: TextAlign.end,

                    // Control the text direction
                    textDirection: TextDirection.rtl,

                    // Whether the text should break at soft line breaks
                    softWrap: true,

                    // Maximum number of lines for the text to span
                    textScaler: TextScaler.linear(1),
                    text: TextSpan(
                      text:
                          "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      children: [
                        TextSpan(
                          text: 'Read More',
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Text(
                    "Size",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizeWidget(size: "S"),
                      SizeWidget(size: "M"),
                      SizeWidget(size: "L"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "\$64.53",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  AppButton(
                    buttonColor: AppColor.primaryColor,
                    buttonWidth: 230,
                    buttonText: "Buy Now",
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SizeWidget extends StatelessWidget {
  const SizeWidget({super.key, required this.size});
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 19,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class CoffeeChoice extends StatelessWidget {
  const CoffeeChoice({super.key, required this.iconUrl});
  final String iconUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Image.asset(iconUrl),
    );
  }
}
