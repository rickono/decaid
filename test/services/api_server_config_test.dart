import 'package:flutter_test/flutter_test.dart';
import 'package:reaprime/src/services/api_server_config.dart';

void main() {
  test('API server port follows the compile-time configuration', () {
    const expectedPort = int.fromEnvironment(
      'expectedApiPort',
      defaultValue: 8080,
    );

    expect(apiServerPort, expectedPort);
  });
}
