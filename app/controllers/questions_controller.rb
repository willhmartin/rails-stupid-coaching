class QuestionsController < ApplicationController
  def ask
    #doesnt actualy need to do anything, except pass input to answer
  end

  def answer
    @question = params[:question]
    @coach_answer = coach_answer_enhanced(@question)
  end

  private

  def coach_answer_enhanced(your_message)
  loud_coach = "I can feel your motivation!"
  if your_message == "I AM GOING TO WORK RIGHT NOW!" || your_message == "I am going to work right now!"
    return ""
  elsif your_message.include?("?") && your_message == your_message.upcase
    return "#{loud_coach} Silly question, get dressed and go to work!"
  elsif your_message == your_message.upcase
    return "#{loud_coach} I don't care, get dressed and go to work!"
  elsif your_message.include?("?")
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end
end



# class PagesController < ApplicationController
#   def contact
#     @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]

#     if params[:member]
#       @members = @members.select { |member| member.start_with?(params[:member]) }
#     end
#   end
# end