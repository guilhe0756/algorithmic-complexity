require 'sinatra'
require_relative './controllers/controller'

get '/' do
  controller = Controller.new
  controller.load_timer

  @result_last = controller.run_last
  @data_ranges_last = @result_last[0]
  @times_last = @result_last[1]

  @result_reverse = controller.run_reverse
  @data_ranges_reverse = @result_reverse[0]
  @times_reverse = @result_reverse[1]

  @result_shuffle = controller.run_shuffle
  @data_ranges_shuffle = @result_shuffle[0]
  @times_shuffle = @result_shuffle[1]

  erb :index
end
