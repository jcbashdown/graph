Dir[File.expand_path("../use_cases/*.rb", __FILE__)].each do |path_to_file|
  require path_to_file
end

