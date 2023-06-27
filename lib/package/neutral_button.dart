import 'package:flutter/material.dart';

import 'base_button.dart';

class SLNeutral extends BaseButton {
  const SLNeutral(
      {super.key,
      super.contentType,
      super.label,
      super.leading,
      super.onTap,
      super.shape,
      super.size,
      super.type,
      super.diabled,
      super.loading,
      super.skeleton,
      super.primaryColor = Colors.white,
      super.subColor = const Color(0xFF27272A)});
}

class SLNeutralReverse extends BaseButton {
  const SLNeutralReverse(
      {super.key,
      super.contentType,
      super.label,
      super.leading,
      super.onTap,
      super.shape,
      super.size,
      super.type,
      super.diabled,
      super.loading,
      super.skeleton,
      super.subColor = Colors.white,
      super.primaryColor = const Color(0xFF27272A)});
}
