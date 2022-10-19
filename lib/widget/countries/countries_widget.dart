import 'package:flutter/material.dart';
import 'package:flutter_redux_sigma/widget/countries/countries_view_model.dart';

import 'country_item/country_item_widget.dart';

class CountriesWidget extends StatelessWidget {
  final CountriesViewModel viewModel;

  const CountriesWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(viewModel.title),
        actions: [
          IconButton(
            onPressed: viewModel.refreshCommand?.command,
            icon: const Icon(Icons.cloud),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ListView.builder(
              itemCount: viewModel.countries?.length ?? 0,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: CountryItemWidget(
                    viewModel: viewModel.countries![index],
                  ),
                );
              },
            ),
            if (viewModel.isLoading) const CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
