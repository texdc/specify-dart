@TestOn('vm')

import 'package:test/test.dart';
import 'package:specify/specify.dart';

import '../asset.dart';

main() {
    group('specification ::', () {
        Specification spec;
        const String testValue = 'test';

        setUp(() {
            spec = new SpecificationStub(testValue);
        });

        test('is a function', () {
            expect(spec, new isInstanceOf<Function>());
        });

        test('function calls isSatisfiedBy', () {
            expect(spec('foo'), isFalse);
            expect(spec(testValue), isTrue);
        });
    });
}
