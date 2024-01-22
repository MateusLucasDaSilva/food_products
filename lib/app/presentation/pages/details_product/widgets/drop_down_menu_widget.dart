import 'package:flutter/material.dart';
import 'package:food_products/app/presentation/pages/details_product/details_product_page.dart';

class DropdownMenuWidget extends StatefulWidget {
  final String label;
  const DropdownMenuWidget({super.key, required this.label});

  @override
  State<DropdownMenuWidget> createState() => _DropdownMenuWidgetState();
}

class _DropdownMenuWidgetState extends State<DropdownMenuWidget> {
  final TextEditingController colorController = TextEditingController();
  ColorLabel? selectedColor;

  @override
  void dispose() {
    colorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          border: Border.all(width: 1, color: Colors.black.withOpacity(.3))),
      child: DropdownMenuTheme(
        data: DropdownMenuThemeData(
          inputDecorationTheme: InputDecorationTheme(
            contentPadding: const EdgeInsets.only(left: 10),
            hintStyle: Theme.of(context).textTheme.bodyMedium,
            isDense: true,
            constraints: const BoxConstraints(maxHeight: 40),
            enabledBorder: InputBorder.none,
            border: InputBorder.none,
          ),
        ),
        child: DropdownMenu<ColorLabel>(
          controller: colorController,
          hintText: widget.label,
          width: MediaQuery.sizeOf(context).width - 40,
          requestFocusOnTap: true,
          trailingIcon: Icon(
            Icons.keyboard_arrow_down_sharp,
            color: Colors.black.withOpacity(.3),
          ),
          selectedTrailingIcon: Icon(
            Icons.keyboard_arrow_up_rounded,
            color: Colors.black.withOpacity(.3),
          ),
          onSelected: (ColorLabel? color) {
            setState(() {
              selectedColor = color;
            });
          },
          dropdownMenuEntries: ColorLabel.values
              .map<DropdownMenuEntry<ColorLabel>>((ColorLabel color) {
            return DropdownMenuEntry<ColorLabel>(
              value: color,
              label: color.label,
              enabled: color.label != 'Grey',
              style: MenuItemButton.styleFrom(
                foregroundColor: color.color,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
