class QuotesController < ApplicationController
  before_filter :set_quotes, only: :index

  def index
    render json: @quotes, meta: {total: Quote.count}
  end

  private

  def set_quotes
    @quotes = Quote.all.page params[:page]
  end
end
