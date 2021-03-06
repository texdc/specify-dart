@TestOn('vm')
///
/// or_specification_test.dart
///
/// @package   specify
/// @license   MIT
/// @copyright 2017 George D. Cooksey, III
///

import 'package:test/test.dart';
import 'package:specify/specify.dart';

import '../asset.dart';

main() {
    group('OrSpecification ::', () {
        OrSpecification orSpecification = new OrSpecificationStub();

        test('is instance of CompositeSpecification', () {
            expect(orSpecification, new isInstanceOf<CompositeSpecification>());
        });

        test('isSatisfiedBy checks any specification', () {
            expect(orSpecification('foo'), isTrue);
            expect(orSpecification('bar'), isTrue);
            expect(orSpecification('baz'), isFalse);
        });
    });
}
