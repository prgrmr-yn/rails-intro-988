class PagesController < ApplicationController

  def about
  end

  def contact
    @members = %w[claire tony santi sarah oliver]
    @search = params[:member]
    @members = @members.select { |m| m == @search } if @search
  end
end
