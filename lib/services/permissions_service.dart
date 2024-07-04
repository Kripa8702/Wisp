import 'package:flutter/material.dart';
import 'package:wisp_app/features/widgets/custom_elevated_button.dart';
import 'package:wisp_app/theme/custom_button_style.dart';

class PermissionsService {
  static Future<void> showPermissionDialog(
      BuildContext context) async{
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Permissions Required'),
          content: const Text(
              'Please allow the required permissions to continue using the app.'),
          actions: <Widget>[
            CustomElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: 'Cancel',
              buttonStyle: CustomButtonStyle.outlinePrimary,
            ),
            CustomElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: 'Allow',
              buttonStyle: CustomButtonStyle.fillBlue,
            ),
          ],
        );
      },
    );
  }
}
