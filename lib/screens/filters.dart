import 'package:flutter/material.dart';
import 'package:meals/widgets/filter_item.dart';
// import 'package:meals/screens/tabs.dart';
// import 'package:meals/widgets/main_drawer.dart';

final class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

final class _FiltersScreenState extends State<FiltersScreen> {

  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegetarianFilterSet = false;
  var _veganFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      // drawer: MainDrawer(onSelectScreen: (identifier) {
      //   Navigator.of(context).pop();
      //   if (identifier == 'meals') {
      //     Navigator.of(context).pushReplacement(
      //       MaterialPageRoute(
      //         builder: (ctx) => const TabsScreen(),
      //       ),
      //     );
      //   }
      // }),
      body: PopScope(
        child: Column(
          children: [
           FilterItem(titleText: 'Gluten-free', subtitleText:'Only include gluten-free meals.', onFilterChanged: (isChecked) {
            setState(() {
                _glutenFreeFilterSet = isChecked;
            });
           },),
           FilterItem(titleText: 'Lactose-free', subtitleText:'Only include lactose-free meals.', onFilterChanged: (isChecked) {
            setState(() {
                _lactoseFreeFilterSet = isChecked;
            });
           },),
           FilterItem(titleText: 'Vegetarian', subtitleText:'Only include vegetarian meals.', onFilterChanged: (isChecked) {
            setState(() {
               _vegetarianFilterSet = isChecked;
            });
           
           },),
           FilterItem(titleText: 'Vegan', subtitleText:'Only include vegan meals.', onFilterChanged: (isChecked) {
            setState(() {
                  _veganFilterSet = isChecked;
            });
           },),
          ],
        ),
      ),
    );
  }
}
