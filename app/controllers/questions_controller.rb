class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # If the message is I am going to work, the coach will answer Great!
    # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    # Otherwise she/he will answer I don't care, get dressed and go to work!

    if params[:user_input] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:user_input].include? "?"
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work"
    end
    return @answer
  end
end
