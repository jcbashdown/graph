module UseCases
  module Argument
    class GetQuestionArgument < ArgumentUseCase

      def call
        raise "Please provide at least one user" if request.user_ids.empty?
        Response.new(argument: build_argument(request.question_id, request.user_ids))
      end

      private

      def build_argument(question_id, user_ids)
        argument_builder(question_id, user_ids).conclusion_level_argument
      end

    end
  end
end
