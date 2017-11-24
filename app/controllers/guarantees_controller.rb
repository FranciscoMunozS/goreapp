class GuaranteesController < ApplicationController
  before_action :set_guarantee, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def search
    if params[:search].present?
      @guarantees = Guarantee.search(params[:search], page: params[:page], per_page: 10)
    else
      @guarantees = Guarantee.all
      @guarantees = Guarantee.paginate(:page => params[:page], :per_page => 10)
    end
  end

  def index
    @guarantees = Guarantee.all
    @guarantees = Guarantee.paginate(:page => params[:page], :per_page => 10).order("created_at DESC")
    @excel = Guarantee.all
 
    respond_to do |format|
      format.html 
      format.xlsx 
    end
  end

  def show
  end

  def new
    @guarantee = current_user.guarantees.build
  end

  def edit
    authorize! :update, @guarantee
  end

  def create
    @guarantee = current_user.guarantees.build(guarantee_params)

    respond_to do |format|
      if @guarantee.save
        format.html { redirect_to @guarantee, notice: 'Guarantee was successfully created.' }
        format.json { render :show, status: :created, location: @guarantee }
      else
        format.html { render :new }
        format.json { render json: @guarantee.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @guarantee.update(guarantee_params)
        format.html { redirect_to @guarantee, notice: 'Guarantee was successfully updated.' }
        format.json { render :show, status: :ok, location: @guarantee }
      else
        format.html { render :edit }
        format.json { render json: @guarantee.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @guarantee.destroy
    respond_to do |format|
      format.html { redirect_to guarantees_url, notice: 'Guarantee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_guarantee
      @guarantee = Guarantee.find(params[:id])
    end

    def guarantee_params
      params.require(:guarantee).permit!
    end
end
