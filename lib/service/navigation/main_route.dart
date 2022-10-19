import 'package:flutter/material.dart';

import 'transition_type.dart';

class MainRoute<T> extends MaterialPageRoute<T> {
  final TransitionType transitionType;
  final Widget widget;

  MainRoute({
    required this.widget,
    required RouteSettings settings,
    required this.transitionType,
  }) : super(builder: (_) => widget, settings: settings);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    final pageTransitionCurve = Curves.ease;
    if (transitionType == TransitionType.none) {
      return child;
    } else if (transitionType == TransitionType.rightToLeft) {
      final animationStyled =
          Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
              .chain(CurveTween(curve: pageTransitionCurve))
              .animate(animation);
      return SlideTransition(position: animationStyled, child: child);
    } else if (transitionType == TransitionType.bottomUp) {
      final animationStyled =
          Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero)
              .chain(CurveTween(curve: pageTransitionCurve))
              .animate(animation);
      return SlideTransition(position: animationStyled, child: child);
    } else if (transitionType == TransitionType.fadeIn) {
      final animationStyled =
          CurvedAnimation(parent: animation, curve: pageTransitionCurve);
      return FadeTransition(opacity: animationStyled, child: child);
    } else {
      final PageTransitionsTheme theme = Theme.of(context).pageTransitionsTheme;
      return theme.buildTransitions<T>(
          this, context, animation, secondaryAnimation, child);
    }
  }

  @override
  Duration get transitionDuration => const Duration(milliseconds: 600);
}
