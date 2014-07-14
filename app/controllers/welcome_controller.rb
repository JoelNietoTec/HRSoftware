class WelcomeController < ApplicationController
  skip_before_filter :require_login, :only => [:index, :test]
  def index
  end
end
