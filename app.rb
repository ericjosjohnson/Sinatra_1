require 'sinatra'
require './models/friends'

get '/' do
  "Inside get fwd slash"
  @friends = Friend.all
  erb :index
end

get '/friends/new' do
  erb :new
end

# get '/friends' do
#   @friends = Friend.all
#   erb :index
# end

post '/friends' do
  p params[:friend_name]
  @friends = Friend.all
  @friends << params[:friend_name]
  erb :index
end

get '/friends/:id' do
  @friend = Friend.find(params[:id].to_i)
  erb :show
end

get '/friends/:id/edit' do
end

delete '/friends/:id' do
  @id = :id.to_i
  # @friend = Friend.find(params[:id].to_i)
  erb :destroy
end