class StaticPagesController < ApplicationController
  skip_before_filter :authenticate_user!

  def home
  end

  def test
  end

  def more
  end

end
