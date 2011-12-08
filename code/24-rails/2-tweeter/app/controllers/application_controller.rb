class ApplicationController < ActionController::Base
  include Authentication
  include Authorization

  protect_from_forgery

  before_filter :get_resources_filter
  before_filter :login_required

  @@member_actions = [ :show, :edit, :update, :destroy ]

  private

  def get_resources_filter
    get_resources if respond_to?( :get_resources )
    if respond_to?( :get_member_resources ) and @@member_actions.include?( action_name.to_sym )
      get_member_resources
    end
  end
end
