Dir[File.expand_path("../ruby_persistence_api/core/*.rb", __FILE__)].each do |path_to_file|
  require path_to_file
end
Dir[File.expand_path("../ruby_persistence_api/active_memory/*.rb", __FILE__)].each do |path_to_file|
  require path_to_file
end
