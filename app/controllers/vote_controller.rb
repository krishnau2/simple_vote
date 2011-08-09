class VoteController < ApplicationController
  def index
    @voting_question = Question.find(params[:id])
    @options = @voting_question.option.split(',').collect(&:strip)
  end

  def create
    @vote = Vote.new
  end
end
