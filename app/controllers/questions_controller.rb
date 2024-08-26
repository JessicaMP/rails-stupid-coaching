class QuestionsController < ApplicationController
  def ask
  end

  def answer
    def set_answer_coach(value)
      case value
      when 'I am going to work'
        'Great!'
      when value.include?('?')
        'Silly question, get dressed and go to work!.'
      else
        "I don't care, get dressed and go to work!"
      end
    end

    @answer_coach = set_answer_coach(params[:question])
  end
end
