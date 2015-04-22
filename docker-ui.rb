require "sinatra/base"
require "json"
class DockerUi < Sinatra::Base

  set :public_folder => "public", :static => true

  get "/" do
    erb :welcome
  end

  get "/containers", provides: :json do
   content_type :json
   Docker::Container.all.map(&:json).to_json
  end

  get "/images", provides: :json do
   content_type :json
   Docker::Image.all.map(&:json).to_json
  end
end
