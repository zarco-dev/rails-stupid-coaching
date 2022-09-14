class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = params[:answer]
    @message = talk_coach(@answer)
  end

  def talk_coach(answer)
    if answer == ''
      @message = "Talk now!"
    elsif answer.include?("I am going to work")
      @message = "Great!"
    elsif answer.end_with?("?")
      @message = "Silly question, get dressed and go to work!"
    else
      @message = "I don't care, get dressed and go to work!"
    end
  end
end
