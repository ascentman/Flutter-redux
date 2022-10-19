import 'package:flutter/material.dart';
import 'package:flutter_redux_sigma/widget/countries/country_item/country_item_view_model.dart';

class CountryItemWidget extends StatelessWidget {
  final CountryItemViewModel viewModel;

  const CountryItemWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.deepPurpleAccent,
      onPressed: viewModel.command?.command,
      child: Text(
        viewModel.name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
