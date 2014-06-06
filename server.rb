require_relative 'model/bank_transaction'
require 'sinatra'
require 'sinatra/reload'

get '/accounts' do

erb :index
end

get '/accounts/:account'

erb :show
end
