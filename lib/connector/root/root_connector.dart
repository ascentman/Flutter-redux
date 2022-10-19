import 'package:flutter/material.dart';
import 'package:flutter_redux_sigma/redux/state/app/app_state.dart';
import 'package:flutter_redux_sigma/widget/root/root_view_model.dart';
import 'package:flutter_redux_sigma/widget/root/root_widget.dart';

import '../page_connector.dart';
import 'root_converter.dart';

class RootConnector extends PageConnector<RootViewModel, RootConverter> {
  const RootConnector({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, RootViewModel viewModel) =>
      RootWidget(viewModel: viewModel);

  @override
  RootConverter prepareConverter(
          BuildContext context, AppState state, Function dispatch) =>
      RootConverter()..dispatch = dispatch;
}
