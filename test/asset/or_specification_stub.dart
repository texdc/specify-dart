///
/// OrSpecificationStub.dart
///
/// @package   specify
/// @license   MIT
/// @copyright 2017 George D. Cooksey, III
///

part of texdc.specify.test.asset;

class OrSpecificationStub extends OrSpecification<String> {
    OrSpecificationStub() : super([
        new SpecificationStub('foo'),
        new SpecificationStub('bar')
    ]);
}
