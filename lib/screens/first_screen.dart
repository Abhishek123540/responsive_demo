import 'package:flutter/material.dart';
import 'package:responsive_demo/tools/styles.dart';
import 'package:responsive_framework/responsive_framework.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                width: width,
                height: 56,
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ResponsiveWrapper.of(context).isLargerThan(TABLET)
                        ? Row(
                            children: [
                              Text(
                                'Products',
                                style: getBodyWhite(context),
                              ),
                              SizedBox(width: width * 0.02),
                              Text(
                                'Cart',
                                style: getBodyWhite(context),
                              ),
                              SizedBox(width: width * 0.02),
                              Text(
                                'About me!',
                                style: getBodyWhite(context),
                              ),
                              SizedBox(width: width * 0.02),
                              Text(
                                'Favourite',
                                style: getBodyWhite(context),
                              ),
                              SizedBox(width: width * 0.02),
                              Text(
                                'Setting',
                                style: getBodyWhite(context),
                              ),
                            ],
                          )
                        : const Icon(
                            Icons.menu_rounded,
                            color: Colors.white,
                          ),
                    const Icon(
                      Icons.login,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ResponsiveRowColumn(
                layout: ResponsiveWrapper.of(context).isLargerThan(TABLET)
                    ? ResponsiveRowColumnType.ROW
                    : ResponsiveRowColumnType.COLUMN,
                children: [
                  ResponsiveRowColumnItem(
                    child: Stack(
                      children: [
                        Image.asset(
                          "asset/images/img.png",
                          width: width * 0.3,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
