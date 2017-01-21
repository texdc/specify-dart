# specify

[Specifications](https://www.martinfowler.com/apsupp/spec.pdf) allow simple classes to encapsulate business rules in a flexible,
testable, and reusable manner.

## examples

```dart
import 'package:specify/specify.dart';

class StringContains extends Specification<String> {
    final String _substring;
    StringContains(this._substring);
    bool isSatisfiedBy(String aString) => aString.contains(_substring);
}

class StringNotContains extends StringContains {
    StringNotContains(String aSubstring) : super(aSubstring);
    bool isSatisfiedBy(String aString) => !super.isSatisfiedBy(aString);
}

class StringIn extends OrSpecification<String> {
    StringIn(List<String> aWordList) : super(
        aWordList.map((String aWord) => new StringContains(aWord)).toList()
    );
}

class StringNotIn extends AndSpecification<String> {
    StringNotIn(List<String> aWordList) : super(
        aWordList.map((String aWord) => new StringNotContains(aWord)).toList()
    );
}

main() {
    StringIn    isWord    = new StringIn(['foo', 'bar']);
    StringNotIn isNotWord = new StringNotIn(['baz', 'zim']);

    print(isWord('barge'));
    print(isNotWord('hello'));
}
```
### filters
Filtering with specifications can be very powerful, especially when used with `CompositeSpecification`.
```dart
import 'package:specify/specify.dart';

class StringLength extends Specification<String> {
    final int _length;

    StringLength(this._length);

    bool isSatisfiedBy(String aString) => aString.length == _length;
}

class LengthFilter extends Filter<String> {
    LengthFilter(int aLength) : super(new StringLength(aLength));
}

main() {
    LengthFilter filter = new LengthFilter(3);

    print(filter(['foo', 'bar', 'nice', 'to', 'know', 'you']));
}
```
