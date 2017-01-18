part of texdc.specify.test.asset;

class AndSpecificationStub extends AndSpecification<String> {
    AndSpecificationStub() : super([
        new SpecificationStub('foo'),
        new SpecificationStub('bar')
    ]);
}
