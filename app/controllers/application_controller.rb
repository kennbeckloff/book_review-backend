class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/books" do
    Book.all.to_json
  end

  get "/books/:id" do
    book = Book.find(params[:id])
    book.to_json
  end
end
