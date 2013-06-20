class ArgumentBuilder
  extend Forwardable

  def_delegators :@argument_querier, :conclusions

  attr_accessor :user_ids, :question_id, :argument_querier

  def initialize(question_id, user_ids, argument_querier)
    @argument_querier = argument_querier
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
