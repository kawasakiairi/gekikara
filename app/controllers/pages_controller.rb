class PagesController < ApplicationController
  skip_before_action :require_login, only: %i[about]

  def about
    @body_class = "bg-primary"
  end
end
