import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle _regular(
    BuildContext context, {
    required double size,
    Color? color,
  }) {
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.normal,
      color: color,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle _medium(
    BuildContext context, {
    required double size,
    Color? color,
  }) {
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w500,
      color: color,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle _semiBold(
    BuildContext context, {
    required double size,
    Color? color,
  }) {
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w600,
      color: color,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle _bold(
    BuildContext context, {
    required double size,
    Color? color,
  }) {
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: color,
      fontFamily: 'Poppins',
    );
  }

  // ** Regular **
  static TextStyle regular12(BuildContext context, {Color? color}) =>
      _regular(context, size: 12, color: color);
  static TextStyle regular14(BuildContext context, {Color? color}) =>
      _regular(context, size: 14, color: color);
  static TextStyle regular16(BuildContext context, {Color? color}) =>
      _regular(context, size: 16, color: color);
  static TextStyle regular18(BuildContext context, {Color? color}) =>
      _regular(context, size: 18, color: color);
  static TextStyle regular20(BuildContext context, {Color? color}) =>
      _regular(context, size: 20, color: color);
  static TextStyle regular22(BuildContext context, {Color? color}) =>
      _regular(context, size: 22, color: color);

  // ** Medium **
  static TextStyle medium12(BuildContext context, {Color? color}) =>
      _medium(context, size: 12, color: color);
  static TextStyle medium14(BuildContext context, {Color? color}) =>
      _medium(context, size: 14, color: color);
  static TextStyle medium16(BuildContext context, {Color? color}) =>
      _medium(context, size: 16, color: color);
  static TextStyle medium18(BuildContext context, {Color? color}) =>
      _medium(context, size: 18, color: color);
  static TextStyle medium20(BuildContext context, {Color? color}) =>
      _medium(context, size: 20, color: color);
  static TextStyle medium22(BuildContext context, {Color? color}) =>
      _medium(context, size: 22, color: color);

  // ** SemiBold **
  static TextStyle semiBold12(BuildContext context, {Color? color}) =>
      _semiBold(context, size: 12, color: color);
  static TextStyle semiBold14(BuildContext context, {Color? color}) =>
      _semiBold(context, size: 14, color: color);
  static TextStyle semiBold16(BuildContext context, {Color? color}) =>
      _semiBold(context, size: 16, color: color);
  static TextStyle semiBold18(BuildContext context, {Color? color}) =>
      _semiBold(context, size: 18, color: color);
  static TextStyle semiBold20(BuildContext context, {Color? color}) =>
      _semiBold(context, size: 20, color: color);
  static TextStyle semiBold22(BuildContext context, {Color? color}) =>
      _semiBold(context, size: 22, color: color);

  // ** Bold **
  static TextStyle bold12(BuildContext context, {Color? color}) =>
      _bold(context, size: 12, color: color);
  static TextStyle bold13(BuildContext context, {Color? color}) =>
      _bold(context, size: 13, color: color);
  static TextStyle bold14(BuildContext context, {Color? color}) =>
      _bold(context, size: 14, color: color);
  static TextStyle bold16(BuildContext context, {Color? color}) =>
      _bold(context, size: 16, color: color);
  static TextStyle bold18(BuildContext context, {Color? color}) =>
      _bold(context, size: 18, color: color);
  static TextStyle bold20(BuildContext context, {Color? color}) =>
      _bold(context, size: 20, color: color);
  static TextStyle bold22(BuildContext context, {Color? color}) =>
      _bold(context, size: 22, color: color);
}
