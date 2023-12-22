import 'package:flutter/material.dart';
import 'my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.background,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0))),
      content: SizedBox(
          height: 120,
          child: Column(
            children: [
              // Get user input
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Add a new task"),
              ),

              // Buttons (cancel and save)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Save button
                    MyButton(text: "Cancel", onPressed: onCancel),

                    // Spacer
                    const SizedBox(
                      width: 8,
                    ),

                    // Cancel button
                    MyButton(text: "Save", onPressed: onSave)
                  ],
                ),
              )
            ],
          )),
    );
  }
}
