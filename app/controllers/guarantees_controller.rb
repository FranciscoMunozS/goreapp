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
        format.html { redirect_to root_path, notice: 'Garantia correctamente creada.' }
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
        format.html { redirect_to root_path, notice: 'Garantia correctamente actualizada.' }
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
      format.html { redirect_to guarantees_url, notice: 'Garantia correctamente eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    def set_guarantee
      @guarantee = Guarantee.find(params[:id])
    end

    def guarantee_params
      params.require(:guarantee).permit(:correlative, :income_number, :income_date, :income_applicant, :borrower_name, :borrower_id, :bank_name, :guarantee_number,
                                        :value_guarantee, :currency_guarantee, :due_date, :state, :bail, :detail, :bip, :devolution_number, :devolution_date,
                                        :devolution_return, :sectorialist_devolution, :email, :technical_unit, :observation, :guarantee_type)
    end
end

#t.integer "correlative"
#t.string "income_number"
#t.date "income_date"
#t.string "income_applicant"
#t.string "borrower_name"
#t.integer "borrower_id"
#t.string "bank_name"
#t.string "guarantee_number"
#t.integer "value_guarantee"
#t.string "currency_guarantee"
#t.date "due_date"
#t.string "state"
#t.string "bail"
#t.string "detail"
#t.string "bip"
#t.string "devolution_number"
#t.date "devolution_date"
#t.string "devolution_return"
#t.string "sectorialist_devolution"
#t.string "email"
#t.string "technical_unit"
#t.text "observation"
#t.datetime "created_at", null: false
#t.datetime "updated_at", null: false
#t.integer "user_id"
#t.string "guarantee_type"
