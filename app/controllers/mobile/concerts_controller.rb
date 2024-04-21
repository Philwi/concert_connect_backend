class Mobile::ConcertsController < ApplicationController
  def index
    @page = params[:page] || 1
    @concerts = Concert.page(@page).per(10)

    if params[:rows_only].present?
      response.headers['Content-Type'] = 'application/vnd.hyperview+xml'
      render partial: 'mobile/concerts/concerts', locals: { concerts: @concerts, page: @page }, layout: false
    else
      render 'mobile/concerts/index', layout: 'mobile'
    end
  end
end
