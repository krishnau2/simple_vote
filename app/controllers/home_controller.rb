class HomeController < ApplicationController
  def index
    @latest_questions = Question.order("created_at DESC").limit(5)
  end

end
