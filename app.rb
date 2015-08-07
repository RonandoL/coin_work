require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coin_combo') do
  all_change = params.fetch('coin')  # Synatra ALWAYS returns a string
  all_change = all_change.to_i.change()         # change string to integer
  @number = params.fetch('coin') # change string to integer
  @quarters = all_change[0]
  @dimes = all_change[1]
  @nickels = all_change[2]
  @pennies = all_change[3]
  erb(:coin_combo)
end
