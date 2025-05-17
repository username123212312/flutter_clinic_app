import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key, required this.onToggle});
  final void Function(bool newValue) onToggle;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _isOn = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isOn = !_isOn;
          widget.onToggle(_isOn);
        });
      },
      child: Container(
        width: 55,
        height: 35,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 5,
              child: Container(
                width: 40,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:
                      _isOn
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              top: 6,
              left: _isOn ? 30 : 0,
              right: _isOn ? 0 : 30,
              child: Container(
                width: 25, // Make thumb wider than track height
                height: 25, // Make thumb taller than track
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
