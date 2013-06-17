require 'spec_helper'

describe UseCases::Argument::GetQuestionArgument do

  describe '#call' do
    let(:question_id) {123}
    subject {described_class.new(UseCases::Request.new(question_id:question_id, user_ids:user_ids))}
    context "when there are no users" do
      let(:user_ids) {[]}
      it "should raise an error" do
        expect{subject.call}.to raise_error "Please provide at least one user"
      end
    end
    context "when there are users" do
      let(:user_ids) {[1]}
      let(:argument) {stub(:argument)}
      let(:response) {stub(:response)}
      let(:argument_builder) {stub(:argument_builder, :conclusion_level_argument => argument)}
      it "should return an argument from build_multi_user_argument" do
        ArgumentBuilder.should_receive(:new).with(question_id, user_ids).and_return argument_builder
        UseCases::Response.should_receive(:new).with(argument:argument).and_return response
        subject.call.should == response
      end
    end
  end

end
