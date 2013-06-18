# -*- coding: UTF-8 -*-

module Entities

  class Node < Entity

    attribute :id, type: Integer
    attribute :title, type: String
    attribute :private, type: Boolean, :default => false
    attribute :created_at, type: DateTime
    attribute :updated_at, type: DateTime

    validates :title, presence: true, uniqueness: true

  end

end
