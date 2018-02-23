configure :development do
  set :database, 'sqlite3:new_restaurant_dev.db'
  set :show_exceptions, true
end
