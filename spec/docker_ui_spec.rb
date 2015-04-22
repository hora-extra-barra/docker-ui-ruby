require_relative "spec_helper"
require_relative "../docker-ui.rb"

def app
  DockerUi
end

describe DockerUi do
  it "responds with a welcome message" do
    get '/'

    last_response.body.must_include 'Welcome to the Sinatra Template!'
  end

  it "responds with json response" do
      get "/containers"

      last_response.headers['Content-Type'].must_equal 'application/json'
  end
end
