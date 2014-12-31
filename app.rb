require 'sinatra'
require 'sinatra/activerecord'
require './environments'
require './models/post'

get "/" do
  @posts = Post.order("created_at DESC")
  @title = "Welcome."
  haml :"posts/index"
end
