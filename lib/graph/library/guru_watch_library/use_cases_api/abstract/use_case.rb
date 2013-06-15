# -*- coding: UTF-8 -*-
require 'ostruct'

module UseCases

  class UseCase

    attr_accessor :request, :db

    def initialize(request_or_hash = { }, db=nil)
      @db = db || self.db
      if request_or_hash.is_a?(Hash)
        self.request = Request.new(request_or_hash)
      else
        self.request = request_or_hash
      end
    end

    private

    def self.db
      return @db if @db
      raise "No DB!"
    end

  end

end
