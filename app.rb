require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end


get("/process_roll") do
  @num_dice = params.fetch("number").to_i
  @sides_dice = params.fetch("count").to_i
  @rolls = []
  @num_dice.times do
      die = rand(1..@sides_dice)
  end
  
  erb(:process_roll)
end
