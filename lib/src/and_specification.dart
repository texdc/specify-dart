part of texdc.specify;

abstract class AndSpecification<T> extends CompositeSpecification<T> {
    AndSpecification(List<Specification<T>> specifications) : super(specifications);

    bool isSatisfiedBy(T aCandidate) => specifications.every((Specification<T> specification) => specification(aCandidate));
}
