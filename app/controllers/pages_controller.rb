# frozen_string_literal: true

class PagesController < ApplicationController
  def show
    @page = Page.find_by(slug: params[:slug], published: true)
    if @page
      render :show
    else
      render file: "#{Rails.root}/public/404.html", status: :not_found
    end
  end
end