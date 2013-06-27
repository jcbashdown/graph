require 'graph'

require 'pry'

GRAPH_ROOT = File.expand_path(File.join(__FILE__, "../../"))

Dir[File.expand_path("../spec_helpers/*.rb", __FILE__)].each do |path_to_file|
  require path_to_file
end

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  #config.filter_run :focus
  config.filter_run_excluding :slow => true

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end
