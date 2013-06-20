require 'spec_helper'

describe UseCases::Argument::ArgumentUseCase do
  describe '#call' do
    subject {described_class.new({})}
    it "should raise an error" do
      expect {subject.call}.to raise_error(RuntimeError, "please define the action on the subclass")
    end
  end

  describe "#argument_querier" do
    let(:db) {mock(:db)}
    let(:argument_querier) {mock(:argument_querier)}
    before {described_class.stub(:db).and_return db}
    it "should instantiate an ArgumentQuerier with the result of db" do
      ArgumentQuerier.should_receive(:new).with(db).and_return argument_querier
      subject.argument_querier.should == argument_querier
    end
  end
 
  describe "#argument_builder" do
    let(:argument_querier) {mock(:argument_querier)}
    let(:argument_builder) {mock(:argument_builder)}
    let(:question_id) {41323}
    let(:user_ids) {[1,4,3,2,5]}
    before {subject.stub(:argument_querier).and_return(argument_querier)}
    it "should instantiate an argument bulder with the question_id, user_ids and argument_querier" do
      ArgumentBuilder.should_receive(:new).with(question_id, user_ids, argument_querier).and_return argument_builder
      subject.argument_builder(question_id, user_ids).should == argument_builder
    end
  end
end
