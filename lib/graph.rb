require 'graph/library'
require 'graph/entities'
require 'graph/use_cases'

module Graph
  def self.backend
    @backend ||= init_backend
  end

  private

  def self.init_backend
    backend = RubyPersistenceAPI::ActiveMemory::Backend.new
    backend.connect!
    backend
  end
end
