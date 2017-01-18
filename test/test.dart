library texdc.specify.test;

import 'src/specification_test.dart' as specification;
import 'src/composite_specification_test.dart' as composite;
import 'src/and_specification_test.dart' as and_specifcation;
import 'src/or_specification_test.dart' as or_specification;

main() {
    specification.main();
    composite.main();
    and_specifcation.main();
    or_specification.main();
}
