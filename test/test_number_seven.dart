// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:skillbox_dart_basics/src/extension_on_num_seven.dart';



void main() {

  test('Корень степеени N', () {

    final result =   24.rootN(1.26, 12);
    expect(result, 12.456778651249);
    final result1 =   5.3.rootN(0.2, 5);
    expect(result1, 4181.95498);
    final result11 =   6.785.rootN(0.7548, 2);
    expect(result11, 12.64);
    final result2 =   9.9.rootN(2.13, 2);
    expect(result2, 2.93);
    final result3 =   0.rootN(1, 12);
    expect(result3, 0);
    final result4 =   1.rootN(2, 12);
    expect(result4, 1);
    final result5 =   1.rootN(-1, 12);
    expect(result5, null);
    final result6 =   0.rootN(0, 12);
    expect(result6, null);

  });


}
