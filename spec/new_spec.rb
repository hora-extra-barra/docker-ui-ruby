require_relative "spec_helper"
require_relative "../new.rb"

def app
  New
end

describe New do
  it "responds with a welcome message" do
    get '/'

    last_response.body.must_include 'Welcome to the Sinatra Template!'
  end
end
