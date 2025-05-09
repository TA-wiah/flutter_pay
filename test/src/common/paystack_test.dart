import 'dart:io';

import 'package:flutter/services.dart';
import 'package:paystack_pay/src/common/paystack.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const MethodChannel channel = MethodChannel('plugins.TA-wiah/paystack_pay');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  group("$PaystackPlugin", () {
    test('is properly initialized with passed key', () async {
      var publicKey = Platform.environment["PAYSTACK_TEST_PUBLIC_KEY"] ?? "";
      final plugin = PaystackPlugin();
      await plugin.initialize(publicKey: publicKey);
      expect(publicKey, plugin.publicKey);
    });
  });
}
