part of texdc.specify.test.asset;

class OrSpecificationStub extends OrSpecification<String> {
    OrSpecificationStub() : super([
        new SpecificationStub('foo'),
        new SpecificationStub('bar')
    ]);
}
