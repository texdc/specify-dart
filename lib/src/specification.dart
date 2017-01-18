part of texdc.specify;

abstract class Specification<T> implements Function {
    bool isSatisfiedBy(T aCandidate);

    bool call(T aCandidate) => isSatisfiedBy(aCandidate);
}
