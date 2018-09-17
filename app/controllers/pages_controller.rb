class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @cats        = Cat.all
    @first_cat   = @cats.sample
    @second_cat  = @cats.sample
  end

end
