class PotentialBuyersController < ApplicationController
  before_action :set_potential_buyer, only: [:show, :edit, :update, :destroy]

  # GET /potential_buyers
  # GET /potential_buyers.json
  def index
    @potential_buyers = PotentialBuyer.all
  end

  # GET /potential_buyers/1
  # GET /potential_buyers/1.json
  def show
  end

  # GET /potential_buyers/new
  def new
    @potential_buyer = PotentialBuyer.new
  end

  # GET /potential_buyers/1/edit
  def edit
  end

  # POST /potential_buyers
  # POST /potential_buyers.json
  def create
    @potential_buyer = PotentialBuyer.new(potential_buyer_params)

    respond_to do |format|
      if @potential_buyer.save
        format.html { redirect_to @potential_buyer, notice: 'Potential buyer was successfully created.' }
        format.json { render :show, status: :created, location: @potential_buyer }
      else
        format.html { render :new }
        format.json { render json: @potential_buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potential_buyers/1
  # PATCH/PUT /potential_buyers/1.json
  def update
    respond_to do |format|
      if @potential_buyer.update(potential_buyer_params)
        format.html { redirect_to @potential_buyer, notice: 'Potential buyer was successfully updated.' }
        format.json { render :show, status: :ok, location: @potential_buyer }
      else
        format.html { render :edit }
        format.json { render json: @potential_buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potential_buyers/1
  # DELETE /potential_buyers/1.json
  def destroy
    @potential_buyer.destroy
    respond_to do |format|
      format.html { redirect_to potential_buyers_url, notice: 'Potential buyer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potential_buyer
      @potential_buyer = PotentialBuyer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def potential_buyer_params
      params.fetch(:potential_buyer, {})
    end
end
