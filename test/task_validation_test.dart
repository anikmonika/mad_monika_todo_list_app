import 'package:flutter_test/flutter_test.dart';
import 'package:mad_monika_todo_list_app/todo_test.dart';

void main() {
  group('Task Name Validation Tests', () {
    test('Valid task name should return true', () {
      final validTaskName = 'Buy groceries';
      final result = isValidTaskName(validTaskName);
      expect(result, isTrue);
    });

    test('Empty task name should return false', () {
      final emptyTaskName = '';
      final result = isValidTaskName(emptyTaskName);
      expect(result, isFalse);
    });

    test('Whitespace-only task name should return false', () {
      final whitespaceTaskName = '   ';
      final result = isValidTaskName(whitespaceTaskName);
      expect(result, isFalse);
    });
  });
}
