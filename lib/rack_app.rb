class App < Sinatra::Base
  configure do
    set :raise_errors, true
    set :show_exceptions, false
  end
    
  post '/books' do
    book = Book.new params[:book]
    if book.save
      status 201
    else
      status 502
    end
  end
end
