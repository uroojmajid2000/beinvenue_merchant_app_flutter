import 'package:bienvenue_merchant_app_flutter/screens/Home/components/stats_card.dart';
import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4 / 3.2,
        ),
        children: const [
          StatsCard(
            img: 'assets/icons/offer_stats.svg',
            text: '3 Offers',
          ),
          StatsCard(
            img: 'assets/icons/sales_stats.svg',
            text: '30 Sales',
          ),
          StatsCard(
            img: 'assets/icons/customers_stats.svg',
            text: '10 Customers',
          ),
          StatsCard(
            img: 'assets/icons/restuarant_stats.svg',
            text: 'Restaurant',
          ),
        ],
      ),
    );
  }
}