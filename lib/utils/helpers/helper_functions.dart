import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

class EHelperFunctions {
  static Color? getColor(String value) {
    if (value == "red") {
      return Colors.red;
    } else if (value == "blue") {
      return Colors.blue;
    } else if (value == "green") {
      return Colors.green;
    } else if (value == "yellow") {
      return Colors.yellow;
    } else if (value == "orange") {
      return Colors.orange;
    } else if (value == "purple") {
      return Colors.purple;
    } else if (value == "pink") {
      return Colors.pink;
    } else if (value == "teal") {
      return Colors.teal;
    } else if (value == "cyan") {
      return Colors.cyan;
    } else if (value == "amber") {
      return Colors.amber;
    } else if (value == "lime") {
      return Colors.lime;
    } else if (value == "indigo") {
      return Colors.indigo;
    } else if (value == "brown") {
      return Colors.brown;
    } else if (value == "grey") {
      return Colors.grey;
    } else if (value == "black") {
      return Colors.black;
    } else if (value == "white") {
      return Colors.white;
    } else if (value == "deepOrange") {
      return Colors.deepOrange;
    } else if (value == "deepPurple") {
      return Colors.deepPurple;
    } else if (value == "lightBlue") {
      return Colors.lightBlue;
    } else if (value == "lightGreen") {
      return Colors.lightGreen;
    } else {
      return null;
    }
  }

  static void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  static void showAlert(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  static void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return text.substring(0, maxLength) + '...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size getScreenSize(BuildContext context) {
    return MediaQuery.of(Get.context!).size;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(Get.context!).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(Get.context!).size.height;
  }

  static String getFormattedDate(DateTime date) {
    // Format the date as desired
    String formattedDate = DateFormat('yyyy-MM-dd').format(date);
    return formattedDate;
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    Set<T> uniqueSet = Set<T>.from(list);
    return uniqueSet.toList();
  }

  static Widget wrapWidgets(List<Widget> widgets, int rowSize) {
    List<Widget> wrapList = [];

    for (int i = 0; i < widgets.length; i++) {
      wrapList.add(widgets[i]);

      if (wrapList.length == rowSize || i == widgets.length - 1) {
        wrapList.add(SizedBox(height: 10)); // Add spacing between rows
      }
    }

    return Column(
      children: wrapList,
    );
  }
}
