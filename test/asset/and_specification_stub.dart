///
/// AndSpecificationStub.dart
///
/// @package   specify
/// @license   MIT
/// @copyright 2017 George D. Cooksey, III
///

part of texdc.specify.test.asset;

class AndSpecificationStub extends AndSpecification<String> {
    AndSpecificationStub() : super([
        new SpecificationStub('foo'),
        new SpecificationStub('bar')
    ]);

    AndSpecification copy(AndSpecification other) => other;
}
