# -*- coding: UTF-8 -*-

module Entities

  class User < Entity

    attribute :id, type: Integer

    validates :id, presence: true, uniqueness: true

  end

end
