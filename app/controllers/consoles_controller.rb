class ConsolesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_console, only: %i[show]
  def index
    if params[:query].present?
      sql_query = " \
        consoles.name ILIKE :query \
        OR consoles.brand ILIKE :query \
      "
      @console = Console.where(sql_query, query: "%#{params[:query]}%")
    else
      @consoles = Console.all
    end
  end

  def show

  end

  def create
  end

  # def new
  # end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private

  def set_console
    @console = Console.find(params[:id])
  end

  def console_paramms
    params.require(:console).permit(:name, :brand, :year, :description)
  end
end
