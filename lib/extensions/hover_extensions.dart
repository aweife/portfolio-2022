import 'package:flutter/material.dart';
import 'package:portfolio2022/widgets/translate_on_hover.dart';

extension HoverExtensions on Widget {
  Widget get showClickOnHover {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: this,
    );
  }

  Widget get moveUpOnHover {
    return TranslateOnHover(
      child: this,
    );
  }
}
