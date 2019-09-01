class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = {}
    if params[:question] == 'I am going to work'
      @answer[:reply] = 'Great!'
    elsif params[:question] =~ /(.+\?$)/
      @answer[:reply] = 'Silly question, get dressed and go to work!'
    else
      @answer[:reply] = "I don't care, get dressed and go to work!"
    end
  end
end
