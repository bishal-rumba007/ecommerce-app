import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          navigationShell,
          Padding(
            padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
            child: Align(
              alignment: const Alignment(0.0, 1.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: navigationShell.currentIndex,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  backgroundColor: AppColor.primary,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.grey,
                  onTap: _goBranch,
                  items: List.generate(4, (index) {
                    String label;
                    String assetName;
                    switch (index) {
                      case 0:
                        label = 'Home';
                        assetName = "assets/icons/home-smile.svg";
                        break;
                      case 1:
                        label = 'Categories';
                        assetName = "assets/icons/grid.svg";
                        break;
                      case 2:
                        label = 'Profile';
                        assetName = "assets/icons/profile.svg";
                        break;
                      case 3:
                        label = 'Cart';
                        assetName = "assets/icons/cart.svg";
                        break;
                      default:
                        throw Exception('Invalid index');
                    }

                    return BottomNavigationBarItem(
                      icon: AnimatedContainer(
                        duration: const Duration(milliseconds: 2000),
                        curve: Curves.easeOut,
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.all(8),
                        decoration: navigationShell.currentIndex == index
                            ? BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.2),
                              )
                            : null,
                        child: SvgPicture.asset(assetName),
                      ),
                      label: label,
                    );
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
