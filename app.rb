require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end 
  get '/square/:number' do 
    @number = params[:number]
    "#{@number.to_i*@number.to_i}"
  end 
  get '/say/:number/:phrase' do 
    @number = params[:number]
    @phrase = params[:phrase]
      answer = ''
    @number.to_i.times do 
      answer += @phrase
    end
    answer
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end 
  
  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    
    if @operation == "add" 
      "#{@num1}+#{@num2}"
    elsif @operation == "subtract" 
      @num1-@num2
    elsif @operation == "multiply" 
      @num1*@num2
    elsif @operation == "divide" 
      @num1/@num2
    end 
  end 
end