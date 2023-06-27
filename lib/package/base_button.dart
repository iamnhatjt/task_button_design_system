import 'package:button_sl/package/enums.dart';
import 'package:button_sl/package/extentions.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final SLShape shape;
  final Color primaryColor;
  final Color subColor;
  final SLType type;
  final Function()? onTap;
  final String? label;
  final SLSize size;
  final SLContentType contentType;
  final Widget? leading;
  
  const BaseButton({
    super.key,
    this.shape = SLShape.pill,
    this.onTap,
    this.label,
    this.leading,
    this.contentType = SLContentType.leadingIcon,
    this.size = SLSize.small,
    required this.primaryColor,
    required this.subColor,
    this.type = SLType.soild,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: size.padding(),
          decoration: BoxDecoration(
            color: type == SLType.soild ? primaryColor : Colors.transparent,
            borderRadius: shape.borderRadius(),
            border: type.borderStyle(primaryColor),
          ),
          child: contentType.toWidget(
            leading,
            Text(
              label ?? '',
              style: size.textStyle().copyWith(
                    color: subColor,
                  ),
            ),
          ),
        ));
  }
}
