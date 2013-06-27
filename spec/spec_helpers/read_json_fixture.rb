def read_json_fixture_to_hash(path_from_app_root)
  JSON.parse(File.read(File.join(GRAPH_ROOT, "#{path_from_app_root}.json")))
end
