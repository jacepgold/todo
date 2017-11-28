class StaticPagesController < ApplicationController
  def home
    @tasks = Task.all
  end
end
