# -*- coding: UTF-8 -*-
require 'ostruct'

Dir[File.expand_path("../abstract/*.rb", __FILE__)].each do |path_to_file|
  require path_to_file
end
Dir[File.expand_path("../common/*.rb", __FILE__)].each do |path_to_file|
  require path_to_file
end
