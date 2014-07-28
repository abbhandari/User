class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
def show 
  @form = Form.find_by_id(params['id'])
end
  
  def new
  end   

def create
  f= Form.new
  f.name = params['name']
  f.email = params['email']
  f.save
  redirect_to "/users/#{f.id}"
end
end