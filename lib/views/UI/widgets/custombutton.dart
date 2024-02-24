// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:xth_app/constant/texttheme.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.isActive = true,
    this.isOutlined = false,
    this.isIconButton = false,
    this.icon = Icons.abc,
    this.iconSize = 24.0,
    this.fontSize = 20.0,
    this.leftIcon = true,
    this.color,
    this.textColor,
    this.fontWeight,
  });

  String buttonText;
  final Function()? onPressed;
  Size buttonSize = Size.zero;
  final bool isActive;
  final bool isOutlined;
  final bool isIconButton;
  final IconData icon;
  final double iconSize;
  final bool leftIcon;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    buttonSize = Size(MediaQuery.of(context).size.width * 1, 54);
    return isOutlined
        ? TextButton(
            onPressed: isActive ? onPressed ?? () {} : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: isActive ? Colors.white : Colors.red,
              side: BorderSide(color: Colors.grey),
              minimumSize: buttonSize,
            ),
            child: isIconButton
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (leftIcon)
                        Icon(
                          icon,
                          size: iconSize,
                          color: isOutlined
                              ? textColor ?? Colors.red
                              : textColor ?? Colors.white,
                        )
                      else
                        const SizedBox(),
                      if (leftIcon)
                        SizedBox(
                          width: 4,
                        )
                      else
                        const SizedBox(),
                      Text(
                        buttonText,
                        style: isActive
                            ? CustomTextTheme().heading5.copyWith(
                                  color: textColor ?? Colors.red,
                                  fontSize: fontSize ?? 20,
                                  fontWeight:
                                      fontWeight ?? FontWeights.semiBold,
                                )
                            : CustomTextTheme().heading6.copyWith(
                                  color: Colors.red,
                                  fontSize: fontSize ?? 20,
                                  fontWeight:
                                      fontWeight ?? FontWeights.semiBold,
                                ),
                      ),
                      if (leftIcon)
                        const SizedBox()
                      else
                        SizedBox(
                          width: 2,
                        ),
                      if (leftIcon)
                        const SizedBox()
                      else
                        Icon(
                          icon,
                          size: iconSize,
                          color: isOutlined
                              ? textColor ?? Colors.grey
                              : textColor ?? Colors.white,
                        ),
                    ],
                  )
                : Text(
                    buttonText,
                    style: isActive
                        ? CustomTextTheme().heading6.copyWith(
                              color: textColor ?? Colors.white,
                              fontSize: fontSize ?? 20,
                              fontWeight: fontWeight ?? FontWeights.semiBold,
                            )
                        : CustomTextTheme().heading6.copyWith(
                              color: Colors.red,
                              fontSize: fontSize ?? 20,
                              fontWeight: fontWeight ?? FontWeights.semiBold,
                            ),
                  ),
          )
        : TextButton(
            onPressed: isActive ? onPressed ?? () {} : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: isActive ? color ?? Colors.red : Colors.grey,
              minimumSize: buttonSize,
            ),
            child: isIconButton
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (leftIcon)
                        Icon(
                          icon,
                          size: iconSize,
                          color: isOutlined
                              ? textColor ?? Colors.red
                              : textColor ?? Colors.white,
                        )
                      else
                        const SizedBox(),
                      if (leftIcon)
                        SizedBox(
                          width: 2,
                        )
                      else
                        const SizedBox(),
                      Text(
                        buttonText,
                        style: isActive
                            ? CustomTextTheme().heading6.copyWith(
                                  color: textColor ?? Colors.white,
                                  fontSize: fontSize ?? 20,
                                  fontWeight:
                                      fontWeight ?? FontWeights.semiBold,
                                )
                            : CustomTextTheme().heading6.copyWith(
                                  color: textColor ?? Colors.red,
                                  fontSize: fontSize ?? 20,
                                  fontWeight:
                                      fontWeight ?? FontWeights.semiBold,
                                ),
                      ),
                      if (leftIcon) const SizedBox() else SizedBox(width: 2),
                      if (leftIcon)
                        const SizedBox()
                      else
                        Icon(
                          icon,
                          size: iconSize,
                          color: isOutlined
                              ? textColor ?? Colors.red
                              : textColor ?? Colors.white,
                        ),
                    ],
                  )
                : Text(
                    buttonText,
                    style: isActive
                        ? CustomTextTheme().heading6.copyWith(
                            color: textColor ?? Colors.white,
                            fontSize: fontSize ?? 20,
                            fontWeight: fontWeight ?? FontWeights.semiBold)
                        : CustomTextTheme()
                            .heading6
                            .copyWith(color: Colors.red),
                  ),
          );
  }
}
