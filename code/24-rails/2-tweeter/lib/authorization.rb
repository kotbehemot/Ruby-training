module Authorization
  def authorized?(object)
    object.respond_to?(:user_id) && object.user_id == current_user.id
  end

  def authorization_required(object)
    unless authorized?(object)
      flash[:error] = 'Unauthorized access'
      redirect_to root_url
    end
  end


end