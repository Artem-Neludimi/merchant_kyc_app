import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.4,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(32, 241, 192, 1),
                  Color.fromRGBO(60, 193, 179, 1)
                ],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'home',
                      style: theme.textTheme.labelLarge,
                    ).tr(),
                  ),
                ),
                Positioned(
                  top: 27,
                  right: 5,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.account_circle_sharp,
                      size: 40,
                    ),
                  ),
                )
                // IconButton(
                //     onPressed: () {}, icon: Icon(Icons.account_circle_sharp))
              ],
            ),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            height: 70,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 24,
                  bottom: 8,
                  child: IconButton(
                    color: const Color.fromRGBO(215, 220, 228, 1),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home_filled,
                      size: 40,
                    ),
                  ),
                ),
                Positioned(
                  right: 24,
                  bottom: 8,
                  child: IconButton(
                    color: const Color.fromRGBO(215, 220, 228, 1),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.insert_chart,
                      size: 40,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 18,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 64,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(215, 220, 228, 1),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Image.asset('assets/images/arrows_icon.png'),
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
