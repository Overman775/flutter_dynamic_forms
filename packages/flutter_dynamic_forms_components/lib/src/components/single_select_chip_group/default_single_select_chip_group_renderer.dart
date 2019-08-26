import 'package:flutter/material.dart';
import 'package:flutter_dynamic_forms/flutter_dynamic_forms.dart';
import 'package:flutter_dynamic_forms_components/src/components/single_select_chip_group/single_select_chip_group.dart';

class DefaultSingleSelectChipGroupRenderer
    extends FormElementRenderer<SingleSelectChipGroup> {
  @override
  Widget render(
      SingleSelectChipGroup element,
      BuildContext context,
      FormElementEventDispatcherFunction dispatcher,
      FormElementRendererFunction renderer) {
    return Wrap(
      children: element.choices
          .where((c) => c.isVisible)
          .map((choice) => renderer(choice, context))
          .toList(),
    );
  }
}
