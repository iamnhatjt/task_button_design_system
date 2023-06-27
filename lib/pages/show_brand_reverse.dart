import 'package:flutter/material.dart';

import '../package/brand_button.dart';
import '../package/enums.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: false,
      onChanged: (_) {},
      side: MaterialStateBorderSide.resolveWith(
        (states) => const BorderSide(width: 2.0, color: Colors.blueGrey),
      ),
    );
  }
}

class ShowBrandReverse extends StatelessWidget {
  const ShowBrandReverse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text(
          'Button Design Sysmtem...',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Brand Button'),
            Wrap(
              runAlignment: WrapAlignment.center,
              spacing: 8,
              runSpacing: 12,
              children: [
                for (SLContentType contentType in SLContentType.values)
                  for (SLType type in SLType.values)
                    for (SLShape shape in SLShape.values)
                      for (SLSize size in SLSize.values)
                        SLBrandReverse(
                          size: size,
                          label: 'Button',
                          shape: shape,
                          type: type,
                          contentType: contentType,
                          leading: const CheckBoxWidget(),
                        ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Wrap(
              runAlignment: WrapAlignment.center,
              spacing: 8,
              runSpacing: 12,
              children: [
                for (SLType type in SLType.values)
                  for (SLShape shape in SLShape.values)
                    for (SLSize size in SLSize.values)
                      SLBrandReverse(
                        size: size,
                        label: 'Button',
                        shape: shape,
                        type: type,
                        diabled: true,
                      ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Wrap(
              runAlignment: WrapAlignment.center,
              spacing: 8,
              runSpacing: 12,
              children: [
                for (SLType type in SLType.values)
                  for (SLShape shape in SLShape.values)
                    for (SLSize size in SLSize.values)
                      SLBrandReverse(
                        size: size,
                        label: 'Button',
                        shape: shape,
                        type: type,
                        loading: true,
                      ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Wrap(
              runAlignment: WrapAlignment.center,
              spacing: 8,
              runSpacing: 12,
              children: [
                for (SLType type in SLType.values)
                  for (SLShape shape in SLShape.values)
                    for (SLSize size in SLSize.values)
                      SLBrandReverse(
                        size: size,
                        label: 'Button',
                        shape: shape,
                        type: type,
                        skeleton: true,
                      ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
