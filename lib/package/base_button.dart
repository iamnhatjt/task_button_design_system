import 'package:button_sl/package/enums.dart';
import 'package:button_sl/package/extentions.dart';
import 'package:button_sl/package/ultis.dart';
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
  final bool diabled;
  final bool skeleton;
  final bool loading;
  final SLState state;

  const BaseButton(
      {super.key,
      this.shape = SLShape.pill,
      this.onTap,
      this.label,
      this.leading,
      this.contentType = SLContentType.leadingIcon,
      this.size = SLSize.small,
      required this.primaryColor,
      required this.subColor,
      this.type = SLType.soild,
      this.diabled = false,
      this.skeleton = false,
      this.loading = false,
      this.state = SLState.defaultState});

  @override
  Widget build(BuildContext context) {
    Color colorPrimary = primaryColor.withOpacity(
        statusOpacity(diabled: diabled, loading: loading, sketleton: skeleton));
    if (diabled) {
      colorPrimary = Colors.grey.withOpacity(0.3);
    }
    Color colorSketon = Colors.grey;
    final leadingWidget = loading
        ? SizedBox(
            height: size.padding().vertical * 1.3,
            width: size.padding().vertical * 1.3,
            child: CircularProgressIndicator(
              color: type == SLType.soild ? subColor : primaryColor,
              backgroundColor: type == SLType.soild
                  ? subColor.withOpacity(0.2)
                  : primaryColor.withOpacity(0.2),
              strokeWidth: 2,
            ),
          )
        : leading;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: size.padding(),
        decoration: BoxDecoration(
          color: skeleton
              ? colorSketon
              : type == SLType.soild
                  ? colorPrimary
                  : Colors.transparent,
          borderRadius: shape.borderRadius(),
          border: type.borderStyle(colorPrimary),
        ),
        child: contentType.toWidget(
          leadingWidget,
          Text(
            label ?? '',
            style: size.textStyle().copyWith(
                  color: skeleton
                      ? colorSketon
                      : type == SLType.soild
                          ? subColor
                          : colorPrimary,
                ),
          ),
        ),
      ),
    );
  }
}
