@TestOn('vm')
///
/// specification_test.dart
///
/// @package   specify
/// @license   MIT
/// @copyright 2017 George D. Cooksey, III
///

import 'package:test/test.dart';
import 'package:specify/specify.dart';

import '../asset.dart';

main() {
    group('Specification ::', () {
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

        test('isSpecialCaseOf compares equality', () {
            expect(spec.isSpecialCaseOf(new SpecificationStub('foo')), isFalse);
        });

        test('isGeneralizationOf compares equality', () {
            expect(spec.isGeneralizationOf(new SpecificationStub(testValue)), isTrue);
        });
    });
}
