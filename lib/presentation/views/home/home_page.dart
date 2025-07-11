import 'package:coffee_shope/core/utils/app_color.dart';
import 'package:coffee_shope/core/utils/widgets/app_button.dart';
import 'package:coffee_shope/data/model/coffee_model.dart';
import 'package:coffee_shope/presentation/providers/home_screen_provider.dart';
import 'package:coffee_shope/presentation/views/details_page/single_product_screen.dart';
import 'package:coffee_shope/presentation/views/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  final coffeeList = ["Capuccino", "Latte", "Macchiato", "Decaf"];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final selectedIndex = ref.watch(selectedCoffeeIndexProvider);
    return Scaffold(
      backgroundColor: AppColor.secondaryColor,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: 135,
                toolbarHeight: 135,
                automaticallyImplyLeading: false,
                backgroundColor: AppColor.secondaryColor,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColor.secondaryColor,
                          AppColor.secondaryColor,
                          AppColor.secondaryColor,
                          AppColor.secondaryColor,
                          AppColor.secondaryColor,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  expandedTitleScale: 1,
                  title: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    iconSize: 34,
                                    color: Colors.white,
                                    icon: const Icon(Icons.menu),
                                    onPressed: () {},
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                              Row(
                                children: [
                                  Container(
                                    width: 35,
                                    height: 35,
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: const Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          HomeSearchBar(size: size),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Stack(
                  clipBehavior: Clip.antiAlias,
                  children: [
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          const SizedBox(height: 200),
                          SizedBox(
                            height: 35,
                            child: ListView.builder(
                              itemCount: coffeeList.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      ref
                                          .read(
                                            selectedCoffeeIndexProvider
                                                .notifier,
                                          )
                                          .state = index;
                                    },
                                    child: Container(
                                      height: 35,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                            index == selectedIndex
                                                ? AppColor.primaryColor
                                                : Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.black12,
                                          width: 1,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color.fromARGB(
                                              255,
                                              107,
                                              104,
                                              104,
                                            ).withOpacity(0.2),
                                            blurRadius: 10,
                                            offset: const Offset(0, 5),
                                          ),
                                        ],
                                      ),
                                      child: Text(
                                        coffeeList[index],
                                        style: TextStyle(
                                          fontSize: 18,
                                          color:
                                              index == selectedIndex
                                                  ? Colors.white
                                                  : Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: IndexedStack(
                              index: selectedIndex,
                              children: [
                                cappucino(
                                  listOfCoffee: coffeeListData,
                                  context: context,
                                ),
                                cappucino(
                                  listOfCoffee: latteListData,
                                  context: context,
                                ),
                                cappucino(
                                  listOfCoffee: coffeeListData,
                                  context: context,
                                ),
                                cappucino(
                                  listOfCoffee: latteListData,
                                  context: context,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 100),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: SizedBox(
                        height: 230,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 100,
                                color: AppColor.secondaryColor,
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                padding: EdgeInsets.all(0),
                                width: 390,
                                height: 200,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color.fromARGB(
                                        255,
                                        173,
                                        171,
                                        171,
                                      ).withOpacity(0.2),
                                      blurRadius: 10,
                                      offset: const Offset(0, 5),
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/images/banner.png",
                                    fit: BoxFit.cover,
                                    width: 390,
                                    height: 200,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Floating bottom nav bar
          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNavItem(Icons.home, true),
                  Stack(
                    children: [
                      _buildNavItem(Icons.local_cafe, false),
                      Positioned(
                        right: 0,
                        top: 4,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.red,
                          child: Text(
                            "2",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  _buildNavItem(Icons.favorite_border, false),
                  _buildNavItem(Icons.notifications_none, false),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  GridView cappucino({
    required List<CoffeeModel> listOfCoffee,
    required BuildContext context,
  }) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 20),
      itemCount: listOfCoffee.length, // Add your desired item count here
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.65,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      shrinkWrap: true,
      itemBuilder: (_, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SingleProduct()),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(
                    255,
                    107,
                    104,
                    104,
                  ).withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 3,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(listOfCoffee[index].image),
                const SizedBox(height: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listOfCoffee[index].name,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      listOfCoffee[index].description,
                      style: TextStyle(fontSize: 13, color: Colors.black54),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$ ${listOfCoffee[index].price}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    AppButton(
                      buttonColor: AppColor.secondaryColor,
                      buttonWidth: 45,
                      buttonHeight: 40,
                      buttonText: "+",
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildNavItem(IconData icon, bool isSelected) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(icon, color: isSelected ? Colors.white : Colors.black54),
    );
  }
}
