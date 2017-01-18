part of texdc.specify;

abstract class CompositeSpecification<T> extends Specification<T> {
    final List<Specification<T>> specifications;

    CompositeSpecification(this.specifications) {
        if (specifications == null || specifications.isEmpty) {
            throw new ArgumentError.notNull('specifications');
        }
    }
}
