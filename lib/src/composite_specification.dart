///
/// CompositeSpecification.dart
///
/// @package   specify
/// @license   MIT
/// @copyright 2017 George D. Cooksey, III
///

part of texdc.specify;

abstract class CompositeSpecification<T> extends Specification<T> {
    final List<Specification<T>> _specifications;

    Iterable<Specification<T>> get specifications => _specifications.take(_specifications.length);

    CompositeSpecification(this._specifications) {
        if (_specifications == null || _specifications.isEmpty) {
            throw new ArgumentError.notNull('specifications');
        }
    }

    CompositeSpecification<T> remainderUnsatisfiedBy(T aCandidate) {
        CompositeSpecification<T> remainder = copy(this);
        remainder._specifications.removeWhere(
            (Specification<T> spec) => spec.isSatisfiedBy(aCandidate)
        );
        return remainder;
    }

    CompositeSpecification<T> copy(CompositeSpecification<T> other);

    int get hashCode => _specifications.hashCode;

    bool operator ==(other) => other is CompositeSpecification<T>
        && _specifications == other._specifications;
}
