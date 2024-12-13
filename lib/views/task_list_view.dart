import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:mad_monika_todo_list_app/view_models/app_view_model.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return Container(
          decoration: BoxDecoration(
            color: viewModel.clrLvl2,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)), // Reduced radius
          ),
          child: ListView.separated(
            padding: const EdgeInsets.all(10), // Reduced padding
            separatorBuilder: (context, index) => const SizedBox(height: 10), // Reduced spacing
            itemCount: viewModel.numTasks,
            itemBuilder: (context, index) {
              return Dismissible(
                key: ValueKey(index),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  HapticFeedback.mediumImpact();
                  viewModel.deleteTask(index);
                },
                background: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3), // Reduced margins
                  decoration: BoxDecoration(
                    color: Colors.red.shade300,
                    borderRadius: BorderRadius.circular(8), // Reduced radius
                  ),
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 15), // Reduced padding
                  child: Icon(Icons.delete, color: Colors.red.shade700),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: viewModel.clrLvl1,
                    borderRadius: BorderRadius.circular(15), // Reduced radius
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8), // Reduced padding
                    leading: Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4), // Reduced radius
                      ),
                      side: BorderSide(width: 1.5, color: viewModel.clrLvl3), // Reduced border width
                      checkColor: viewModel.clrLvl1,
                      activeColor: viewModel.clrLvl3,
                      value: viewModel.getTaskValue(index),
                      onChanged: (value) {
                        if (value != null) {
                          viewModel.setTaskValue(index, value);
                        }
                      },
                    ),
                    title: Text(
                      viewModel.getTaskTitle(index),
                      style: TextStyle(
                        color: viewModel.clrLvl4,
                        fontSize: 15, // Reduced font size
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
