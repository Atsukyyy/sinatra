require 'sinatra'
require 'sinatra/reloader'
=begin
get '/hello/:name' do
  "Hellooooo! #{params[:name]}"
end

get '/about/:fname/?:lname?' do |f, l|
  "About #{f} #{l}"
end

get %r{/users/(\w*)} do |i|
  "User id = #{i}"
end
=end

get '/' do
  @title="Sinatra"
  @content="HELLO!"
  erb :index
end

get '/about' do
  @title="About"
  @content="About this page"
  @email="atsuki@mail"
  erb :about
end
