part of texdc.specify;

abstract class Filter<T> implements Function {
    final Specification<T> _specification;

    Filter(this._specification) {
        if (_specification == null) {
            throw new ArgumentError.notNull('specification');
        }
    }

    List<T> call(List<T> aList) => aList.where((T anItem) => _specification(anItem)).toList();
}
