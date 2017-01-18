@TestOn('vm')

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

        test('filters out unspecified items', () {
            expect(filter([testValue, 'foo', 'testy']), equals([testValue, 'testy']));
        });
    });
}
