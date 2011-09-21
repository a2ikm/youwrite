class TpostsController < ApplicationController
  # GET /tposts
  # GET /tposts.xml
  def index
    @tposts = Tpost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tposts }
    end
  end

  # GET /tposts/1
  # GET /tposts/1.xml
  def show
    @tpost = Tpost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tpost }
    end
  end

  # GET /tposts/new
  # GET /tposts/new.xml
  def new
    @tpost = Tpost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tpost }
    end
  end

  # GET /tposts/1/edit
  def edit
    @tpost = Tpost.find(params[:id])
  end

  # POST /tposts
  # POST /tposts.xml
  def create
    @tpost = Tpost.new(params[:tpost])

    respond_to do |format|
      if @tpost.save
        format.html { redirect_to(@tpost, :notice => 'Tpost was successfully created.') }
        format.xml  { render :xml => @tpost, :status => :created, :location => @tpost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tpost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tposts/1
  # PUT /tposts/1.xml
  def update
    @tpost = Tpost.find(params[:id])

    respond_to do |format|
      if @tpost.update_attributes(params[:tpost])
        format.html { redirect_to(@tpost, :notice => 'Tpost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tpost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tposts/1
  # DELETE /tposts/1.xml
  def destroy
    @tpost = Tpost.find(params[:id])
    @tpost.destroy

    respond_to do |format|
      format.html { redirect_to(tposts_url) }
      format.xml  { head :ok }
    end
  end
end
