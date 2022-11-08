require 'sinatra'

class App < Sinatra::Base

    # Add this line to set the Content-Type header for all responses
    set :default_content_type, 'application/json'

 # :num1 and :num2 are named parameters
  get '/add/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i

  sum = num1 + num2
  { result: sum }.to_json
end


    # get '/add/1/2' do
    #   sum = 1 + 2
    #   { result: sum }.to_json
    # end

  # get '/dice' do
  #   dice_roll = rand(1..6)
  #   # "<h2>You rolled a #{dice_roll}</h2>"
  #   { roll: dice_roll }.to_json
  # end

  # get '/hello' do
  #   '<h2>Hello <em>World</em>!</h2>'
  # end
  # get '/potato' do
  #   "<p>Boil 'em, mash 'em, stick 'em in a stew</p>"
  # end
  
end

run App
