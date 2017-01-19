@TestOn('vm')
///
/// and_specification_test.dart
/// 
/// @package   specify
/// @license   MIT
/// @copyright 2017 George D. Cooksey, III
///

import 'package:test/test.dart';
import 'package:specify/specify.dart';

import '../asset.dart';

main() {
    group('AndSpecification ::', () {
        AndSpecification andSpecification = new AndSpecificationStub();

        test('is instance of CompositeSpecification', () {
            expect(andSpecification, new isInstanceOf<CompositeSpecification>());
        });

        test('isSatisfiedBy checks every specification', () {
            expect(andSpecification('foo'), isFalse);
            expect(andSpecification('bar'), isFalse);
            expect(andSpecification('foobar'), isTrue);
        });
    });
}
