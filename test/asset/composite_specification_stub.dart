///
/// CompositeSpecificationStub.dart
///
/// @package   specify
/// @license   MIT
/// @copyright 2017 George D. Cooksey, III
///

part of texdc.specify.test.asset;

class CompositeSpecificationStub extends CompositeSpecification<String> {
    CompositeSpecificationStub(List<Specification<String>> specs) : super(specs);

    bool isSatisfiedBy(String aString) => specifications.any((Specification<String> spec) => spec(aString));
}
