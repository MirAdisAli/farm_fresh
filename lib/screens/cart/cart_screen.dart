import 'package:farm_fresh/screens/cart/bottom_checkout.dart';
import 'package:flutter/material.dart';
import 'package:farm_fresh/screens/cart/cart_widget.dart';
import 'package:farm_fresh/services/assets_manager.dart';
import 'package:farm_fresh/widgets/empty_bag.dart';
import 'package:farm_fresh/widgets/title_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  final bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? Scaffold(
            body: EmptyBagWidget(
              imagePath: AssetsManager.shoppingBasket,
              title: "Your cart is empty",
              subtitle:
                  "Looks like your cart is empty add something",
              buttonText: "Shop now",
            ),
          )
        : Scaffold(
          bottomSheet: const CartBottomSheetWidget(),
            appBar: AppBar(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  AssetsManager.logo,
                ),
              ),
              title: const TitlesTextWidget(label: "Cart (1)"),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete_forever_rounded,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            body: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const CartWidget();
                }),
          );
  }
}
