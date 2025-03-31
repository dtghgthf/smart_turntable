import 'package:flutter/material.dart';
import 'package:smart_turntable/util/NFCHandler.dart';
import 'package:smart_turntable/util/blueprints/TextInput.dart';
import 'package:smart_turntable/util/custom_widgets.dart';


TextEditingController controller = TextEditingController();


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextInput(
            controller: controller,
            hintText: "URL Here",
            keyboardType: TextInputType.text,
          ),
          addVerticalSpace(15),
          ElevatedButton(
            onPressed: () async {
              print(controller.text);
              bool succeed = await writeNFC(controller.text);

              showErrorSnackbar(context, succeed ? "Success" : "Failed");
            },
            child: Text("Upload to NFC"),
          )
        ],
      ),
    );
  }
}
