import 'package:flutter/material.dart';

class HorizontalColorPicker extends StatefulWidget {
  final List<Color> colors;
  final Function(Color) onColorChanged;

  const HorizontalColorPicker({
    Key? key,
    required this.colors,
    required this.onColorChanged,
  }) : super(key: key);

  @override
  _HorizontalColorPickerState createState() => _HorizontalColorPickerState();
}

class _HorizontalColorPickerState extends State<HorizontalColorPicker> {
  late Color _currentColor;

  @override
  void initState() {
    super.initState();
    _currentColor = widget.colors.first; // Set initial color
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var color in widget.colors) buildColorButton(color),
      ],
    );
  }

  Widget buildColorButton(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentColor = color;
        });
        widget.onColorChanged(color);
      },
      child: Container(
        width: 20,
        height: 20,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: _currentColor == color ? buildSelectedIndicator() : null,
      ),
    );
  }

  Widget buildSelectedIndicator() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 2),
      ),
    );
  }
}
