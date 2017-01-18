part of texdc.specify;

abstract class OrSpecification<T> extends CompositeSpecification<T> {
    OrSpecification(List<Specification<T>> specifications) : super(specifications);

    bool isSatisfiedBy(T aCandidate) => specifications.any((Specification<T> specification) => specification(aCandidate));
}
