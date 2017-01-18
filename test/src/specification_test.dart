@TestOn('vm')

import 'package:test/test.dart';
import 'package:specify/specify.dart';

main() {
    group('specification ::', () {
        Specification spec;
        const String testValue = 'test';

        setUp(() {
            spec = new SpecificationStub(testValue);
        });

        test('is a function', () {
            expect(spec, new isInstanceOf<Function>());
        });

        test('function calls isSatisfiedBy', () {
            expect(spec('foo'), isFalse);
            expect(spec(testValue), isTrue);
        });
    });
}

class SpecificationStub extends Specification<String> {
    final String _control;
    SpecificationStub(this._control);
    bool isSatisfiedBy(String aString) => _control == aString;
}
