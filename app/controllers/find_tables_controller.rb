class FindTablesController < ApplicationController
  before_action :set_find_table, only: %i[ show edit update destroy ]

  # GET /find_tables or /find_tables.json
  def index
    @find_tables = FindTable.all
    @search = params[:q]
    @results = if @search.blank?
                 []
               else
                 FindTable.where('first_name LIKE :search OR last_name LIKE :search OR table_number = :exact_table', search: "%#{@search}%", exact_table: @search)
               end
  end

  # GET /find_tables/1 or /find_tables/1.json
  def show
  end

  # GET /find_tables/new
  def new
    @find_table = FindTable.new
  end

  # GET /find_tables/1/edit
  def edit
  end

  # POST /find_tables or /find_tables.json
  def create
    @find_table = FindTable.new(find_table_params)

    respond_to do |format|
      if @find_table.save
        format.html { redirect_to find_table_url(@find_table), notice: "Find table was successfully created." }
        format.json { render :show, status: :created, location: @find_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @find_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /find_tables/1 or /find_tables/1.json
  def update
    respond_to do |format|
      if @find_table.update(find_table_params)
        format.html { redirect_to find_table_url(@find_table), notice: "Find table was successfully updated." }
        format.json { render :show, status: :ok, location: @find_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @find_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /find_tables/1 or /find_tables/1.json
  def destroy
    @find_table.destroy!

    respond_to do |format|
      format.html { redirect_to find_tables_url, notice: "Find table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_find_table
      @find_table = FindTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def find_table_params
      params.require(:find_table).permit(:first_name, :last_name, :table_number, :related_names)
    end
end
