class GlobalizeTestsController < ApplicationController
  # GET /globalize_tests
  # GET /globalize_tests.json
  def index
    @globalize_tests = GlobalizeTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @globalize_tests }
    end
  end

  # GET /globalize_tests/1
  # GET /globalize_tests/1.json
  def show
    @globalize_test = GlobalizeTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @globalize_test }
    end
  end

  # GET /globalize_tests/new
  # GET /globalize_tests/new.json
  def new
    @globalize_test = GlobalizeTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @globalize_test }
    end
  end

  # GET /globalize_tests/1/edit
  def edit
    @globalize_test = GlobalizeTest.find(params[:id])
  end

  # POST /globalize_tests
  # POST /globalize_tests.json
  def create
    @globalize_test = GlobalizeTest.new(params[:globalize_test])

    respond_to do |format|
      if @globalize_test.save
        format.html { redirect_to @globalize_test, notice: 'Globalize test was successfully created.' }
        format.json { render json: @globalize_test, status: :created, location: @globalize_test }
      else
        format.html { render action: "new" }
        format.json { render json: @globalize_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /globalize_tests/1
  # PUT /globalize_tests/1.json
  def update
    @globalize_test = GlobalizeTest.find(params[:id])

    respond_to do |format|
      if @globalize_test.update_attributes(params[:globalize_test])
        format.html { redirect_to @globalize_test, notice: 'Globalize test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @globalize_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /globalize_tests/1
  # DELETE /globalize_tests/1.json
  def destroy
    @globalize_test = GlobalizeTest.find(params[:id])
    @globalize_test.destroy

    respond_to do |format|
      format.html { redirect_to globalize_tests_url }
      format.json { head :no_content }
    end
  end
end
