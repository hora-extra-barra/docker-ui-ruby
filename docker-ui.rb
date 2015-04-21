class DockerUi < Sinatra::Base

  set :public_folder => "public", :static => true

  get "/" do
    erb :welcome
  end

  get "/containers" do
    erb :welcome
  end
end
