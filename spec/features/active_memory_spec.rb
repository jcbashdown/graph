require 'spec_helper'

describe "testing storage" do
  let(:node_attrs) {}
  let(:db) do
    backend = RubyPersistenceAPI::ActiveMemory::Backend.new
    backend.connect!
    backend
  end

  describe "creating Node" do
    node = Node.new(node_attrs)
    db[node].save
  end

end
