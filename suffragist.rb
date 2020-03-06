require 'sinatra'
require 'yaml/store'

get '/' do
   @title = 'Welcome to the Suffragist!'
   erb :index
end
Choices = {
  'HAM' => 'Hamburger',
  'PIZ' => 'Pizza',
  'CUR' => 'Curry',
  'NOO' => 'Noodles',
  'BRI' => 'Briyani',
  }

post '/cast' do
  @title = 'Thanks for casting your vote!'
  @vote  = params['vote']
  
  @store = YAML::Store.new 'votes.yml'
  if @vote == 'BRI'
    @store.transaction do
      @store['votes'] ||= {}
      @store['votes'][@vote] ||= 0
      if @store['votes'][@vote] % 2 ==0
        @store['votes'][@vote] += -1
        
      else
        @store['votes'][@vote] += 1
      end
      
    end
  end
  
  erb :cast
end

get '/results' do
  @title = 'Results so far:'
  @store = YAML::Store.new 'votes.yml'
  @votes = @store.transaction { @store['votes'] }
  erb :results
end