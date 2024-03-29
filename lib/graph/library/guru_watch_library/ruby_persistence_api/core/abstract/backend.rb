# -*- coding: UTF-8 -*-

module RubyPersistenceAPI

  module Abstract

    class Backend

      def [](entity_object_or_entity_class)
        if entity_object_or_entity_class.is_a?(Class)
          query(entity_object_or_entity_class)
        else
          gateway(entity_object_or_entity_class)
        end
      end

      private

      def query(entity_class)
        gateway_class = deduce_gateway_class_from(entity_class)
        gateway = gateway_class.new(self)
        Query.new(gateway)
      end

      def gateway(entity)
        gateway_class = deduce_gateway_class_from(entity.class)
        gateway_class.new(self, entity)
      end

      def deduce_gateway_from(entity_class)
        gateway_class = deduce_gateway_class_from(entity_class)
        gateway_class.new(self)
      end

      def deduce_gateway_class_from(entity_class)
        gateway_class_name ="Backends::ActiveMemory::#{entity_class.name.demodulize}Gateway"
        begin
          gateway_class = gateway_class_name.constantize
        rescue
          raise StandardError.new("Cannot find #{gateway_class_name}")
        end

        gateway_class
      end

    end

  end

end
