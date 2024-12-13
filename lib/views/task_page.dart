import 'package:flutter/material.dart';
import 'package:mad_monika_todo_list_app/views/add_task_view.dart';
import 'package:mad_monika_todo_list_app/views/header_view.dart';
import 'package:mad_monika_todo_list_app/views/task_info_view.dart';
import 'package:mad_monika_todo_list_app/views/task_list_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header View
            const SizedBox(
              height: 100, // Assign fixed height to avoid flex overflow
              child: HeaderView(),
            ),

            // Task Info View
            const SizedBox(
              height: 80, // Assign fixed height
              child: TaskInfoView(),
            ),

            // Task List View
            Expanded(
              child: TaskListView(), // Use the remaining space for the list
            ),
          ],
        ),
      ),
      floatingActionButton: const Padding(
        padding: EdgeInsets.only(bottom: 16), // Add padding for safe positioning
        child: AddTaskView(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
