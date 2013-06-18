# -*- coding: UTF-8 -*-

module Entities

  class Node < Entity

    attribute :id, type: Integer
    attribute :title, type: String
    attribute :private, type: Boolean
    attribute :created_at, type: Time
    attribute :updated_at, type: Time

    validates :title, presence: true, uniqueness: true

  end

end
