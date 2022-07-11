import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ColumnExtenstion on Column {
  Widget rowOn(double width, {bool heigher = true, bool fullScreen = false}) {
    return LayoutBuilder(builder: ((context, constraints) {
      double maxWidth =
          fullScreen ? MediaQuery.of(context).size.width : constraints.maxWidth;
      return heigher
          ? Flex(
              direction: maxWidth >= width ? Axis.horizontal : Axis.vertical,
              children: this.children,
            )
          : Flex(
              direction: maxWidth < width ? Axis.horizontal : Axis.vertical,
              children: this.children,
            );
    }));
  }
}

extension RowExtenstion on Row {
  Widget columnOn(double width,
      {bool heigher = true, bool fullScreen = false}) {
    return LayoutBuilder(builder: ((context, constraints) {
      double maxWidth =
          fullScreen ? MediaQuery.of(context).size.width : constraints.maxWidth;
      return heigher
          ? Flex(
              direction: maxWidth > width ? Axis.vertical : Axis.horizontal,
              children: this.children,
            )
          : Flex(
              direction: maxWidth <= width ? Axis.vertical : Axis.horizontal,
              children: this.children,
            );
    }));
  }
}

extension ResponsiveValues on dynamic {
  dynamic RV(BuildContext context, dynamic value, {double maxWidth = 720}) {
    bool isMobile = MediaQuery.of(context).size.width < maxWidth;
    return isMobile ? this : value;
  }
}

extension StringExtension on String {
  Widget text(
      {double fs = 14,
      Color color = Colors.black,
      FontWeight font = FontWeight.normal}) {
    return Text(this,
        style: TextStyle(fontSize: fs, color: color, fontWeight: font));
  }

  Widget bold(
      {double fs = 14,
      Color color = Colors.black,
      FontWeight font = FontWeight.bold}) {
    return Text(this,
        style: TextStyle(fontSize: fs, color: color, fontWeight: font));
  }

  Widget white(
      {double fs = 14,
      Color color = Colors.white,
      FontWeight font = FontWeight.normal}) {
    return Text(this,
        style: TextStyle(fontSize: fs, color: color, fontWeight: font));
  }
}

extension WidgetsExtension on Widget {
  Widget flexible({flex = 1}) {
    Text("").center();
    return Flexible(child: this, flex: flex);
  }

  Widget center() {
    return Center(child: this);
  }

  Widget expanded({flex: 1}) {
    return Expanded(
      child: this,
      flex: flex,
    );
  }

  Widget align(Alignment alignment) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }

  Widget right() {
    return Align(alignment: Alignment.centerRight, child: this);
  }

  Widget left() {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }

  Widget bottom() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: this,
    );
  }

  Widget top() {
    return Align(
      alignment: Alignment.topCenter,
      child: this,
    );
  }

  Widget expandOn(double width,
      {int flex = 1, bool heigher = true, bool fullScreen = false}) {
    return LayoutBuilder(builder: ((context, constraints) {
      double maxWidth =
          fullScreen ? MediaQuery.of(context).size.width : constraints.maxWidth;
      return heigher
          ? Expanded(
              flex: maxWidth > width ? flex : 0,
              child: this,
            )
          : Expanded(
              flex: maxWidth <= width ? flex : 0,
              child: this,
            );
    }));
  }

  Widget hideOn(BuildContext context, double width, {bool heigher = true}) {
    final maxWidth = MediaQuery.of(context).size.width;
    return heigher
        ? maxWidth >= width
            ? Container()
            : this
        : maxWidth < width
            ? Container()
            : this;
  }

  Widget safe() {
    return SafeArea(child: this);
  }

  Widget decorate(
      {Color? color,
      double borderRadius = 0,
      BoxShape boxShape = BoxShape.rectangle}) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          shape: boxShape,
          borderRadius: BorderRadius.circular(borderRadius)),
      child: this,
    );
  }

  Widget size({double? width, double? height}) {
    return SizedBox(
      width: width,
      height: height,
      child: this,
    );
  }

  Widget scrollable() {
    return SingleChildScrollView(
      child: this,
    );
  }

  Widget infinityWidth() {
    return Container(
      width: double.infinity,
      child: this,
    );
  }

  Widget infinityHeight() {
    return Container(
      height: double.infinity,
      child: this,
    );
  }

  Widget infinity() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: this,
    );
  }

  Widget maxWidth([double maxWidth = 720]) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: this,
    );
  }

  Widget maxHeight([double maxHeight = 720]) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: maxHeight),
      child: this,
    );
  }

  Widget minWidth(double value) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: value),
      child: this,
    );
  }

  Widget minHeight(double value) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: value),
      child: this,
    );
  }

  Widget px(double value) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: value),
      child: this,
    );
  }

  Widget py(double value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: value),
      child: this,
    );
  }

  Widget pt(double value) {
    return Padding(
      padding: EdgeInsets.only(top: value),
      child: this,
    );
  }

  Widget pb(double value) {
    return Padding(
      padding: EdgeInsets.only(bottom: value),
      child: this,
    );
  }

  Widget pl(double value) {
    return Padding(
      padding: EdgeInsets.only(left: value),
      child: this,
    );
  }

  Widget pr(double value) {
    return Padding(
      padding: EdgeInsets.only(right: value),
      child: this,
    );
  }

  Widget p(double value) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }
}
