class ClientsController < ApplicationController
  before_action :print_status
  after_action  :later_status
  around_action :round_status
  #http_basic_authenticate_with name: "Admin", password: "test1235"
  
  #layout :find_layout
 # layout :special, only: [:index, :show]

  def index
    #render js: "alert('hello world')"
    @clients = Client.all
  end

  def generate_test
     "
      <html>
   <p>Hello pdf</p>
      </html>
    "
  end


   def new
    flash[:happy] = "Happy message!"
    flash[:welcome] = "Welcome message!"
    session[:test] = "session"
    cookies[:test1] = "coockies"
    @client = Client.new
    #redirect_back(fallback_location: root_path)
    #redirect_to clients_path, notice: "Notice message"
   end

  def print_status
    puts "************* Current clients status! **************"
  end

  def later_status
    puts "###############Later status***************"
  end


  def round_status
    puts "================?Begining of status"
      yield
    puts "End of status<====================="
  end


end
