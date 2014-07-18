class RequestsController < ApplicationController
  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.all(:order => 'id DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @requests }
    end
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
    @request = Request.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @request }
    end
  end

  # GET /requests/new
  # GET /requests/new.json
  def new
    @request = Request.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @request }
    end
  end

  # GET /requests/1/edit
  def edit
    @request = Request.find(params[:id])
  end

  # POST /requests
  # POST /requests.json
  def create
    time1 = Time.now
    @request = Request.new(:request_ip => (request.remote_ip.to_s), :content => request.body, :content_length => request.content_length, :request_type => (request.method.to_s))
    if @request.save
      render :nothing=> true, :status => 200
    else
      render :nothing=> true, :status => 500
    end
  end

  # PUT /requests/1
  # PUT /requests/1.json
  def update
    @request = Request.find(params[:id])

    respond_to do |format|
      if @request.update_attributes(params[:request])
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request = Request.find(params[:id])
    @request.destroy

    respond_to do |format|
      format.html { redirect_to requests_url }
      format.json { head :no_content }
    end
  end

  def download
    filename = File.join(Rails.root, "public/test.txt")
    @request = Request.new(:request_ip => (request.remote_ip.to_s), :content_length => filename.size, :request_type => (request.method.to_s))
    if @request.save
      send_file(filename, :type=>'text')
    else
      render :nothing=> true, :status => 500
    end
  end

  def downloadlarge
    filename = File.join(Rails.root, "public/large.txt")
    @request = Request.new(:request_ip => (request.remote_ip.to_s), :content_length => filename.size, :request_type => (request.method.to_s))
    if @request.save
      send_file(filename, :type=>'text')
    else
      render :nothing=> true, :status => 500
    end
  end
end
