///
/// FilterStub.dart
///
/// @package   specify
/// @license   MIT
/// @copyright 2017 George D. Cooksey, III
///

part of texdc.specify.test.asset;

class FilterStub extends Filter<String> {
    FilterStub(String aString) : super(new SpecificationStub(aString));
    FilterStub.empty() : super(null);
}
