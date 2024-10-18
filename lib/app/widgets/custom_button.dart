import 'package:final_df/app/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomMaterialButton extends StatefulWidget {
  const CustomMaterialButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.height,
    this.backgroundColor,
    this.radius,
    this.style,
  }) : super(key: key);
  final String? text;
  final double? height;
  final Color? backgroundColor;
  final BorderRadiusGeometry? radius;
  final Function()? onTap;
  final TextStyle? style;

  @override
  State<CustomMaterialButton> createState() => _CustomMaterialButtonState();
}

class _CustomMaterialButtonState extends State<CustomMaterialButton> {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          InkWell(
            onTap: widget.onTap,
            child: Container(
                height: widget.height,
                decoration: BoxDecoration(
                  color: widget.backgroundColor ?? ColorsValue.maincolor1,
                  borderRadius:
                      widget.radius ?? BorderRadius.circular(Dimens.twelve),
                ),
                child: Center(
                  child:
                      Text(widget.text!, style: widget.style ?? Styles.white14),
                )),
          ),
        ],
      );
}
