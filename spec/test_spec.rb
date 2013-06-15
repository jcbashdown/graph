require 'spec_helper'
require 'neography'

def log_time(start)
  p Time.now - start 
end

describe 'testing', slow: true do
  it 'does things' do
    #use some kind of flag and instance variables so its a word to log, add to array of time with notes based on test name etc.
    start = Time.now
    @neo = Neography::Rest.new
    node1 = @neo.create_node("age" => 31, "name" => "Max")
    node2 = @neo.create_node("age" => 33, "name" => "Roel")
    log_time(start)

    # Node properties:
    @neo.set_node_properties(node1, {"weight" => 200})

    # Relationships between nodes:
    @neo.create_relationship("coding_buddies", node1, node2)

    # Get node relationships:
    @neo.get_node_relationships(node2, "in", "coding_buddies")

    # Use indexes:
    @neo.add_node_to_index("people", "name", "max", node1)
    @neo.get_node_index("people", "name", "max")

    # Cypher queries:
    @neo.execute_query("start n=node(0) return n")

    # Batches:
    @neo.batch [:create_node, {"name" => "Max"}],
               [:create_node, {"name" => "Marc"}]
  end
end
