import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'enums.dart';

extension Padding on SLSize {
  EdgeInsetsGeometry padding() {
    switch (this) {
      case SLSize.small:
        return const EdgeInsets.symmetric(vertical: 3, horizontal: 12)
            .copyWith(top: 2);
      case SLSize.medium:
        return const EdgeInsets.symmetric(vertical: 5.5, horizontal: 12)
            .copyWith(top: 4.5);
      default:
        return const EdgeInsets.symmetric(vertical: 8, horizontal: 12)
            .copyWith(top: 7);
    }
  }

  TextStyle textStyle() {
    switch (this) {
      case SLSize.small:
        return const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        );
      case SLSize.medium:
        return const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        );
      default:
        return const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        );
    }
  }
}

extension Rounded on SLShape {
  BorderRadius borderRadius() {
    switch (this) {
      case SLShape.pill:
        return BorderRadius.circular(4);
      case SLShape.rounded:
        return BorderRadius.circular(20);
    }
  }
}

extension WidgetSetting on SLContentType {
  Widget toWidget(Widget? leading, Widget? labelText) {
    switch (this) {
      case SLContentType.textOnly:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [labelText ?? const SizedBox.shrink()],
        );
      case SLContentType.leadingIcon:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                leading != null
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          leading,
                          const SizedBox(
                            width: 8.0,
                          ),
                        ],
                      )
                    : const SizedBox.shrink(),
                labelText ?? const SizedBox.shrink(),
              ],
            )
          ],
        );
      case SLContentType.trailingIcon:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        leading != null
                            ? Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  leading,
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                ],
                              )
                            : const SizedBox.shrink(),
                        labelText ?? const SizedBox.shrink(),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        );
      default:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [leading ?? const SizedBox.shrink()],
        );
    }
  }
}

extension BorderStyleCustom on SLType {
  BoxBorder borderStyle(Color primaryColor) {
    switch (this) {
      case SLType.soild:
        return Border.all(
          width: 1,
          color: primaryColor,
          style: BorderStyle.none,
        );
      case SLType.outline:
        return Border.all(
          width: 1,
          color: primaryColor,
          style: BorderStyle.solid,
        );
      default:
        return Border.all(
          width: 1,
          color: primaryColor,
          style: BorderStyle.none,
        );
    }
  }
}
