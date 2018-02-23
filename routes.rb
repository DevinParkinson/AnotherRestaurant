class Choices < Sinatra::Base

  get "/" do
    erb :home
  end

  get "/menu/new" do
    erb :new
  end

  post "/menu" do
  Menu.create(title: params[:title], description: params[:description])
  redirect "/"
  end

  get "/menu" do
  @order = Menu.all
  erb :menu
  end

  get "/menu/:id/edit" do
  @order = Menu.find(params[:id])
  erb :edit
  end

  put "/menu/:id" do
  menu = Menu.find(params[:id])
  app.update(title: params[:title], description: params[:description])
  redirect "/menu"
  end

  delete "/menu/:id" do
  Menu.find(params[:id]).destroy
  redirect "/menu"
  end

end
