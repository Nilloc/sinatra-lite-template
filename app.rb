require 'rubygems'
require 'sinatra'
require 'haml'
require 'open-uri'

@app_id = "YOUR_APP_ID";
@app_secret = "YOUR_APP_SECRET";
@post_login_url = "/";


error do
  e = request.env['sinatra.error']
  Kernel.puts e.backtrace.join("\n")
  'Application error'
end

helpers do
  # add your helpers here
end

# root page
get '/' do
  
  haml :index
end

get '/tester' do
  url = "https://graph.facebook.com/19292868552"
  open(url) do |f|
    f.each_line do |l|
      puts "I Got #{@l}"
    end
  end
  
  haml :tester
end

get '/sign_in' do
  
end
