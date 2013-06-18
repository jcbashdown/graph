require 'spec_helper'

describe "testing storage" do
  let(:node_attrs) {{
    title: 'a node'
  }}
  let(:db) do
    backend = RubyPersistenceAPI::ActiveMemory::Backend.new
    backend.connect!
    backend
  end

  describe "creating Node" do
    after do
      db[Entities::Node].all.each do |node|
        db[node].destroy
      end
    end
    it "should persist the node" do
      node = Entities::Node.new(node_attrs)
      db[node].save
      found_node = db[Entities::Node].find(node.id)
      node.should == found_node
      node.title.should == found_node.title
    end
  end

end
