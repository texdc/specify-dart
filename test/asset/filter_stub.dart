part of texdc.specify.test.asset;

class FilterStub extends Filter<String> {
    FilterStub(String aString) : super(new SpecificationStub(aString));
}
