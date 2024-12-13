import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:mad_monika_todo_list_app/view_models/app_view_model.dart';
import 'package:mad_monika_todo_list_app/views/bottom_sheets/delete_bottom_sheet_view.dart';
import 'package:mad_monika_todo_list_app/views/bottom_sheets/settings_bottom_sheet_view.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0), // Add padding to fit the layout
          child: Row(
            children: [
              // Username Section
              Expanded(
                flex: 3,
                child: Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              "Hello,",
                              style: TextStyle(
                                fontSize: 30, // Reduce font size if necessary
                                fontWeight: FontWeight.w400,
                                color: viewModel.clrLvl4,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              viewModel.username,
                              style: TextStyle(
                                fontSize: 35, // Adjust font size
                                fontWeight: FontWeight.bold,
                                color: viewModel.clrLvl4,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Trash Icon
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    HapticFeedback.mediumImpact();
                    viewModel.bottomSheetBuilder(
                      const DeleteBottomSheetView(),
                      context,
                    );
                  },
                  child: FittedBox(
                    fit: BoxFit.contain, // Ensure icon fits the layout
                    child: Icon(
                      Icons.delete,
                      color: viewModel.clrLvl3,
                      size: 18, // Slightly smaller size
                    ),
                  ),
                ),
              ),
              // Settings Icon
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    HapticFeedback.mediumImpact();
                    viewModel.bottomSheetBuilder(
                      const SettingsBottomSheetView(),
                      context,
                    );
                  },
                  child: FittedBox(
                    fit: BoxFit.contain, // Ensure icon fits the layout
                    child: Icon(
                      Icons.settings,
                      color: viewModel.clrLvl3,
                      size: 18, // Slightly smaller size
                    ),
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