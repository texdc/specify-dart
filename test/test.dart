///
/// test.dart
///
/// @package   specify
/// @license   MIT
/// @copyright 2017 George D. Cooksey, III
///

library texdc.specify.test;

import 'src/specification_test.dart' as specification;
import 'src/composite_specification_test.dart' as composite;
import 'src/and_specification_test.dart' as and_specifcation;
import 'src/or_specification_test.dart' as or_specification;
import 'src/filter_test.dart' as filter;

main() {
    specification.main();
    composite.main();
    and_specifcation.main();
    or_specification.main();
    filter.main();
}
