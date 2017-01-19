@TestOn('vm')
///
/// composite_specification_test.dart
///
/// @package   specify
/// @license   MIT
/// @copyright 2017 George D. Cooksey, III
///

import 'package:test/test.dart';
import 'package:specify/specify.dart';

import '../asset.dart';

main() {
    group('CompositeSpecification ::', () {
        test('is instance of Specification', () {
            CompositeSpecification composite = new CompositeSpecificationStub([
                new SpecificationStub('test')
            ]);

            expect(composite, new isInstanceOf<Specification>());
        });

        test('constructor checks for null specification list', () {
            expect(() => new CompositeSpecificationStub(null), throwsArgumentError);
        });

        test('constructor checks for empty specification list', () {
            expect(() => new CompositeSpecificationStub([]), throwsArgumentError);
        });
    });
}
