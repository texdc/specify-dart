///
/// SpecificationStub.dart
///
/// @package   specify
/// @license   MIT
/// @copyright 2017 George D. Cooksey, III
///

part of texdc.specify.test.asset;

class SpecificationStub extends Specification<String> {
    final String _control;
    SpecificationStub(this._control);
    bool isSatisfiedBy(String aString) => aString.contains(_control);
}
