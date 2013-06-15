module UseCases
  class GetQuestionArgument < UseCase

    def call
      raise "Please provide at least one user or :all" if request.users.empty?
      if request.users == :all
        build_multi_user_argument(request.question, User.all_ids)
      elsif request.users.length > 1
        build_multi_user_argument(request.question, request.users)
      else
        request.users.first.argument_for(request.question)
      end
    end

  end
end
