module UseCases
  module Argument
    class GetQuestionArgument < UseCase

      def call
        raise "Please provide at least one user" if request.user_ids.empty?
        Response.new(argument: build_argument(request.question_id, request.user_ids))
      end

      private

      def build_argument(question_id, user_ids)
        ArgumentBuilder.new(question_id,user_ids).conclusion_level_argument
      end

    end
  end
end

#this will move to helpers? utils?
class ArgumentBuilder

  attr_accessor :user_ids, :question_id

  def initialize(question_id, user_ids)
    #@users = ArgumentQueryUserCollection(users)
    @question_id = question_id
    @user_ids = user_ids
  end

  #work with no opinion?
  def conclusion_level_argument
    db[User].find_all(user_ids)
  end

  def argument_for(node);end

  def question_summary(level=2);end#anything that is conclusion in arg or child of conclusion in arg to zero based level
end

class Db
  attr_accessor :subject 

  def [](class_or_instance)
    @subject = class_or_instance
  end

  def where(attrs={})
    #some where method implemented by backend where backend can find config stuff for each entity type and then find by attributes given
  end
end
