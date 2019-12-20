class Book1sController < ApplicationController
  before_action :set_book1, only: [:show, :edit, :update, :destroy]

  # GET /book1s
  # GET /book1s.json
  def index
    @book1s = Book1.all
  end

  # GET /book1s/1
  # GET /book1s/1.json
  def show
  end

  # GET /book1s/new
  def new
    @book1 = Book1.new
  end

  # GET /book1s/1/edit
  def edit
  end

  # POST /book1s
  # POST /book1s.json
  def create
    @book1 = Book1.new(book1_params)

    respond_to do |format|
      if @book1.save
        format.html { redirect_to @book1, notice: 'Book1 was successfully created.' }
        format.json { render :show, status: :created, location: @book1 }
      else
        format.html { render :new }
        format.json { render json: @book1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book1s/1
  # PATCH/PUT /book1s/1.json
  def update
    respond_to do |format|
      if @book1.update(book1_params)
        format.html { redirect_to @book1, notice: 'Book1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @book1 }
      else
        format.html { render :edit }
        format.json { render json: @book1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book1s/1
  # DELETE /book1s/1.json
  def destroy
    @book1.destroy
    respond_to do |format|
      format.html { redirect_to book1s_url, notice: 'Book1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book1
      @book1 = Book1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book1_params
      params.require(:book1).permit(:rake_no, :book_no, :student_id)
    end
end
