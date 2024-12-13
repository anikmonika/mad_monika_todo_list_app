import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mad_monika_todo_list_app/view_models/app_view_model.dart';
import 'package:mad_monika_todo_list_app/models/task_model.dart';

class AddTaskBottomSheetView extends StatelessWidget {
  const AddTaskBottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController entryController = TextEditingController();

    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: viewModel.clrLvl1,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: entryController,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  cursorColor: viewModel.clrLvl4,
                  style: TextStyle(
                    color: viewModel.clrLvl4,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: viewModel.clrLvl2,
                    hintText: "Enter a task",
                    hintStyle: TextStyle(color: viewModel.clrLvl3),
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onSubmitted: (value) {
                    if (entryController.text.trim().isNotEmpty) {
                      final newTask = Task(entryController.text.trim(), false);
                      viewModel.addTask(newTask);
                      entryController.clear();
                      Navigator.of(context).pop();
                    }
                  },
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (entryController.text.trim().isNotEmpty) {
                      final newTask = Task(entryController.text.trim(), false);
                      viewModel.addTask(newTask);
                      entryController.clear();
                      Navigator.of(context).pop();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: viewModel.clrLvl3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Add Task",
                    style: TextStyle(color: viewModel.clrLvl1),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
