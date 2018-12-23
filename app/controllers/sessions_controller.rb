class SessionsController < ApplicationController
  def new
  	#enters username in the view, no passwordy
    # we aren't making a user model so this is empty?
  end

  def create
    if params[:name] && params[:name] != ""
     session[:name] = params[:name]
     #we set a cookie on browser by writing username
     #into session hash
     redirect_to controller: 'application', action: 'hello'

   else
     redirect_to controller: 'sessions', action: 'new'
   end
 end


  def destroy
  session.delete :name
  #deletes [:username] from session hash
  redirect_to controller: 'application', action: 'hello'
  end

end
