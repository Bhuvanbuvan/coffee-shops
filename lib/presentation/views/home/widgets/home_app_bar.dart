import 'package:coffee_shope/core/utils/app_color.dart';
import 'package:flutter/material.dart';

AppBar homeAppBar() {
    return AppBar(
      backgroundColor: AppColor.secondaryColor,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          IconButton(
            iconSize: 34,
            color: Colors.white,
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kopi Kap",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Home",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        Container(
          width: 35,
          height: 35,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: const Icon(Icons.person, color: Colors.white, size: 25),
          ),
        ),
      ],
    );
  }