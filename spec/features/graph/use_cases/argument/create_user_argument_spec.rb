require 'spec_helper'

describe UseCases::Argument::CreateUserArgument do
  let(:argument_hash) {read_json_fixture_to_hash("seeds/user_arguments")}
  subject {described_class.new(UseCases::Request.new(argument_hash))}
  describe "#call" do
    it "should successfully create the argument" do
      subject.call
      #should create user
      #should create user nodes...hmmm. maybe not. user id should be on node - only use nodes(should set if link node & if composite node)
      #should create supporters
      #should create opposers
      #should create body
      p argument_hash
    end
  end

end
