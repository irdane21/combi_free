class CombisController < ApplicationController
  before_action :find_combi, only: [:edit, :update, :show]

  # def index
  #   @combis = policy_scope(Combi)
  # end

  # def show
  #   authorize @combi
  # end

  # def new
  #   @combi = Combi.new
  #   authorize @combi
  # end

  # def create
  #   @combi = Combi.new(params_combi)
  #   authorize @combi
  #   if @combi.save
  #     redirect_to combi_path(@combi)
  #   else
  #     render new
  #   end
  # end


  # end

  # def edit
  #   authorize @combi
  # end

  # def update
  #   authorize @combi
  #   if @combi.update(params_combi)
  #     redirect_to combi_path(@combi)
  #   else
  #     render :edit
  #   end
  # end

  # private

  # def find_combi
  #   @combi = Combi.find(params[:id])
  # end

  # def params_combi
  #   params.require(:combi).permit(:model, :description, :price, :lat, :lgn, :address, :city, :photo)
  # end
end
