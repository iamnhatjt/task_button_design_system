import 'package:button_sl/package/base_button.dart';
import 'package:flutter/material.dart';

class SLBrand extends BaseButton {
  const SLBrand(
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
      super.primaryColor = const Color(0xFF2B5ACC),
      super.subColor = Colors.white});
}

class SLBrandReverse extends BaseButton {
  const SLBrandReverse(
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
      super.subColor = const Color(0xFF2B5ACC),
      super.primaryColor = Colors.white});
}
