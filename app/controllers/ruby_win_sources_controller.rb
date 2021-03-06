class RubyWinSourcesController < ApplicationController
  before_action :set_ruby_win_source, only: %i[ show edit update destroy ]

  # GET /ruby_win_sources or /ruby_win_sources.json
  def index
    @ruby_win_sources = RubyWinSource.all
  end

  # GET /ruby_win_sources/1 or /ruby_win_sources/1.json
  def show
  end

  # GET /ruby_win_sources/new
  def new
    @ruby_win_source = RubyWinSource.new
  end

  # GET /ruby_win_sources/1/edit
  def edit
  end

  # POST /ruby_win_sources or /ruby_win_sources.json
  def create
    @ruby_win_source = RubyWinSource.new(ruby_win_source_params)

    respond_to do |format|
      if @ruby_win_source.save
        format.html { redirect_to @ruby_win_source, notice: "Ruby win source was successfully created." }
        format.json { render :show, status: :created, location: @ruby_win_source }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ruby_win_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruby_win_sources/1 or /ruby_win_sources/1.json
  def update
    respond_to do |format|
      if @ruby_win_source.update(ruby_win_source_params)
        format.html { redirect_to @ruby_win_source, notice: "Ruby win source was successfully updated." }
        format.json { render :show, status: :ok, location: @ruby_win_source }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ruby_win_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruby_win_sources/1 or /ruby_win_sources/1.json
  def destroy
    @ruby_win_source.destroy
    respond_to do |format|
      format.html { redirect_to ruby_win_sources_url, notice: "Ruby win source was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruby_win_source
      @ruby_win_source = RubyWinSource.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ruby_win_source_params
      params.require(:ruby_win_source).permit(:name, :author, :url)
    end
end
