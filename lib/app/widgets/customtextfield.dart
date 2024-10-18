import 'package:final_df/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField(
      {Key? key,
      required this.text,
      this.hintText,
      this.controller,
      this.obscure = false,
      this.autofocus = false,
      this.isCompulsoryText = false,
      this.readOnly = false,
      this.suffixIcon,
      this.keybordtype,
      this.textInputAction,
      this.maxLength,
      this.maxLines,
      this.validation,
      this.onChanged,
      required this.fillColor,
      this.textstyle,
      this.inputformate,
      this.initialValue,
      this.onTap})
      : super(key: key);

  final String? text;
  final String? hintText;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputformate;
  final String? initialValue;
  final bool obscure;
  final bool autofocus;
  final Widget? suffixIcon;
  final int? maxLength;
  final int? maxLines;
  final TextInputType? keybordtype;
  final String? Function(String?)? validation;
  final Color? fillColor;
  final bool isCompulsoryText;
  final bool readOnly;
  final void Function()? onTap;
  final ValueChanged<String>? onChanged;
  final TextInputAction? textInputAction;
  final bool? textstyle;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.isCompulsoryText
            ? Row(
                children: [
                  Text(
                    widget.text!,
                    style: context.isTablet
                        ? Styles.lightgreytab18700
                        : Styles.lightgrey12700,
                  ),
                  Dimens.boxWidth3,
                  Text(
                    "*",
                    textAlign: TextAlign.start,
                    style: Styles.redTxt10,
                  )
                ],
              )
            : Text(
                widget.text!,
                style: context.isTablet
                    ? Styles.lightgreytab18700
                    : Styles.main60014,
              ),
        Dimens.boxHeight7,
        TextFormField(
          controller: widget.controller,
          inputFormatters: widget.inputformate,
          cursorColor: ColorsValue.maincolor1,
          obscureText: widget.obscure,
          readOnly: widget.readOnly,
          onChanged: widget.onChanged,
          maxLength: widget.maxLength,
          maxLines: widget.maxLines,
          autofocus: widget.autofocus,
          enableInteractiveSelection: false,
          textInputAction: widget.textInputAction,
          keyboardType: widget.keybordtype,
          validator: widget.validation,
          initialValue: widget.initialValue,
          style: context.isTablet ? Styles.maintab60014 : null,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            focusColor: ColorsValue.greyLight,
            hoverColor: ColorsValue.greyLight,
            suffixIcon: widget.suffixIcon,
            counterText: '',
            contentPadding: EdgeInsets.all(Dimens.eleven),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: Dimens.one,
                style: BorderStyle.solid,
                color: ColorsValue.greyLight,
              ),
              borderRadius: BorderRadius.circular(Dimens.twelve),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: Dimens.one,
                style: BorderStyle.solid,
                color: ColorsValue.greyLight,
              ),
              borderRadius: BorderRadius.circular(Dimens.twelve),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: Dimens.one,
                style: BorderStyle.solid,
                color: ColorsValue.greyLight,
              ),
              borderRadius: BorderRadius.circular(Dimens.twelve),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: Dimens.one,
                style: BorderStyle.solid,
                color: ColorsValue.greyLight,
              ),
              borderRadius: BorderRadius.circular(Dimens.twelve),
            ),
            fillColor: widget.fillColor,
            filled: true,
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: Dimens.one,
                style: BorderStyle.solid,
                color: ColorsValue.greyLight,
              ),
              borderRadius: BorderRadius.circular(Dimens.twelve),
            ),
            hintStyle: context.isTablet ? Styles.boldtab18 : Styles.bold14,
            errorStyle: context.isTablet ? Styles.redtab14 : Styles.red12,
            hintText: widget.hintText,
          ),
        )
      ],
    );
  }
}
