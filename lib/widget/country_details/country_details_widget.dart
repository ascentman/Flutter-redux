import 'package:flutter/material.dart';
import 'package:flutter_redux_sigma/widget/country_details/country_details_view_model.dart';

import 'country_details_item.dart';

class CountryDetailsWidget extends StatelessWidget {
  final CountryDetailsViewModel viewModel;

  const CountryDetailsWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(viewModel.country),
        leading: IconButton(
          onPressed: viewModel.backCommand.command,
          icon: const Icon(Icons.close),
        ),
        actions: [
          IconButton(
            onPressed: viewModel.refreshCommand?.command,
            icon: const Icon(Icons.cloud),
          ),
        ],
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16.0,
          ),
          CountryDetailsItemWidget(text: viewModel.confirmed),
          CountryDetailsItemWidget(text: viewModel.recovered),
          CountryDetailsItemWidget(text: viewModel.deaths),
        ],
      )),
    );
  }
}
