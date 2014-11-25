require 'enviroment'
require "rack_app"
require 'book'

fdescribe App do
  include Rack::Test::Methods

  let(:app) { App }

  it "creates a book" do
    post :books, book: { name: "My brand new book" }
    expect(last_response.status).to eq 201
  end
end
