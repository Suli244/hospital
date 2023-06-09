import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:hospital/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.bell).existsSync(), true);
    expect(File(Images.clipboard).existsSync(), true);
    expect(File(Images.hospital).existsSync(), true);
    expect(File(Images.speech).existsSync(), true);
  });
}
