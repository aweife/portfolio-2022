import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:portfolio2022/widgets/translate_on_hover.dart';

extension HoverExtension on Widget {
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
