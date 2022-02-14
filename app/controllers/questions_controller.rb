class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question].present?
      if params[:question] == 'I am going to work'
        @answer = 'Great'
      elsif params[:question].include?('?')
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don\'t care, get dressed and go to work!"
      end
    else
      @answer = "go to work!"
    end
  end
end
