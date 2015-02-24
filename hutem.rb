require 'sinatra'
require 'redis'

set :bind, '0.0.0.0'
set :port, 8080

redis = Redis.new

helpers do
  get_current_temp
    # redis call on latest temp entry here
  end

  get_current_humidity
    # redis call on latest humidity enrtry
  end
end

get '/' do
  erb :index
end
