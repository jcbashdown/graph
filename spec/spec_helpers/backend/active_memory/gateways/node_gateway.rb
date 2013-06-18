# -*- coding: UTF-8 -*-

module Backends

  module ActiveMemory

    class NodeGateway < RubyPersistenceAPI::ActiveMemory::Gateway

      entity_class ::Entities::Node

    end

  end

end
