require_relative 'utils/argument_builder'
require_relative 'utils/argument_querier'

module UseCases
  module Argument
    class ArgumentUseCase < UseCase
      def call
        raise "please define the action on the subclass"
      end

      def argument_querier
        ArgumentQuerier.new(db)
      end

      def argument_builder(question_id, user_ids)
        ArgumentBuilder.new(question_id,user_ids, argument_querier)
      end
    end
  end
end
