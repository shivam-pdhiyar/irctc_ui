import 'package:flutter/material.dart';
import 'package:irctc_ui/utils.dart';

class SelectTrainFiltersWidget extends StatefulWidget {
  const SelectTrainFiltersWidget({super.key});

  @override
  State<SelectTrainFiltersWidget> createState() =>
      _SelectTrainFiltersWidgetState();
}

class _SelectTrainFiltersWidgetState extends State<SelectTrainFiltersWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            FillterButton(hasTitle: true, hasIcon: false, title: "Available"),
            SizedBox(width: setWidth(7)),
            FillterButton(
                hasTitle: true,
                hasIcon: true,
                title: "Quota",
                icon: Icons.keyboard_arrow_down_rounded),
          ],
        ),
        Row(
          children: [
            FillterButton(
                hasTitle: true,
                hasIcon: true,
                title: "Sort",
                icon: Icons.keyboard_arrow_down_rounded),
            SizedBox(width: setWidth(7)),
            FillterButton(
                hasTitle: false, hasIcon: true, icon: Icons.filter_alt_outlined)
          ],
        ),
      ],
    );
  }

}

class FillterButton extends StatefulWidget {
  const FillterButton(
      {super.key,
      required this.hasTitle,
      required this.hasIcon,
      this.title,
      this.icon});

  final hasTitle;
  final hasIcon;
  final title;
  final icon;

  @override
  State<FillterButton> createState() => _FillterButtonState();
}

class _FillterButtonState extends State<FillterButton> {
  bool isFilterActive = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isFilterActive = !isFilterActive;
        });
      },
      child: Container(
        height: setHeight(37),
        padding: EdgeInsets.symmetric(horizontal: setWidth(14)),
        decoration: BoxDecoration(
            // color: Color(0xFF1D1F24),
            color: isFilterActive
                ? Color(0xFF2475EE).withOpacity(0.2)
                : Color(0xFF1D1F24),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
                width: 1.6,
                color: isFilterActive ? Color(0xFF2475EE) : Color(0xFF282B32))),
        child: Row(
          children: [
            widget.hasTitle
                ? Text(
                    widget.title!,
                    style:
                        TextStyle(color: Colors.white, fontSize: setHeight(13)),
                  )
                : SizedBox(width: 0),
            widget.hasTitle & widget.hasIcon
                ? SizedBox(width: setWidth(5))
                : SizedBox(width: 0),
            widget.hasIcon
                ? Icon(widget.icon!,
                    size: setHeight(30), color: Color(0xFF6D6E7C))
                : SizedBox(width: 0)
          ],
        ),
      ),
    );
  }
}
