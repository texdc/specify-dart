@TestOn('vm')
///
/// filter_test.dart
///
/// @package   specify
/// @license   MIT
/// @copyright 2017 George D. Cooksey, III
///

import 'package:test/test.dart';
import 'package:specify/specify.dart';

import '../asset.dart';

main() {
    group('Filter ::', () {
        const String testValue = 'test';
        Filter filter = new FilterStub(testValue);

        test('is a function', () {
            expect(filter, new isInstanceOf<Function>());
        });

        test('specification is required', () {
            expect(() => new FilterStub.empty(), throwsArgumentError);
        });

        test('filters out unspecified items', () {
            expect(filter([testValue, 'foo', 'testy']), equals([testValue, 'testy']));
        });
    });
}
