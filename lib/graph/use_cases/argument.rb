require_relative "argument/argument_use_case"

Dir[File.expand_path("../argument/*.rb", __FILE__)].each do |path_to_file|
  require path_to_file
end
