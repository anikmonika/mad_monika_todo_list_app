import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mad_monika_todo_list_app/view_models/app_view_model.dart';

class TaskInfoView extends StatelessWidget {
  const TaskInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8), // Reduced margins
          child: Row(
            children: [
              // Total Tasks
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(8), // Reduced padding
                  decoration: BoxDecoration(
                    color: viewModel.clrLvl2,
                    borderRadius: BorderRadius.circular(8), // Reduced border radius
                  ),
                  child: Column(
                    children: [
                      Text(
                        "${viewModel.numTasks}",
                        style: TextStyle(
                          fontSize: 18, // Reduced font size
                          color: viewModel.clrLvl3,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2), // Reduced space
                      Text(
                        "Total Tasks",
                        style: TextStyle(
                          fontSize: 12, // Reduced font size
                          color: viewModel.clrLvl4,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12), // Reduced space between boxes
              // Remaining Tasks
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(8), // Reduced padding
                  decoration: BoxDecoration(
                    color: viewModel.clrLvl2,
                    borderRadius: BorderRadius.circular(8), // Reduced border radius
                  ),
                  child: Column(
                    children: [
                      Text(
                        "${viewModel.numTasksRemaining}",
                        style: TextStyle(
                          fontSize: 18, // Reduced font size
                          color: viewModel.clrLvl3,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2), // Reduced space
                      Text(
                        "Remaining",
                        style: TextStyle(
                          fontSize: 12, // Reduced font size
                          color: viewModel.clrLvl4,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
