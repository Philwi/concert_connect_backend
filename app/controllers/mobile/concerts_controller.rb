class Mobile::ConcertsController < MobileController
  def index
    @page = params[:page] || 1
    @concerts = Concert.page(@page).per(10)

    if params[:rows_only].present?
      response.headers['Content-Type'] = 'application/vnd.hyperview+xml'
      render partial: 'mobile/concerts/concerts', locals: { concerts: @concerts, page: @page }, layout: false
    end
  end

  def show
    @concert = Concert.find(params[:id])
    render layout: false
  end

  def image
    @concert = Concert.find(params[:id])
    render layout: false
  end
end
