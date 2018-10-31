require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @num_sq = @num * @num
    "#{@num_sq.to_s}"
  end

  get '/say/:number/:phrase' do
    @n = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @n.times {@string << "#{@phrase}"}
    "#{@string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    if @operation == "add"
      "#{@n1 + @n2}"
    elsif @operation == "subtract"
      "#{@n1 - @n2}"
    elsif @operation == "multiply"
      "#{@n1 * @n2}"
    elsif @operation == "divide"
      "#{@n1 / @n2}"
    end
  end

end