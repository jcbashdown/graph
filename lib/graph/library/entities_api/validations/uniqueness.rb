# -*- coding: UTF-8 -*-

module Validations

  class UniquenessValidator < ActiveModel::EachValidator

    def validate_each(object, attribute, value)
      db = Graph.backend
      if db[object.class].where(attribute => value).where_not(id: object.id).first
        object.errors.add(attribute, :taken, options.merge(value: value))
      end
    end

  end

end
