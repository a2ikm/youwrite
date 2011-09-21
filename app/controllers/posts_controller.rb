class PostsController < ApplicationController
  def index
    @posts = Post.newer
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params[:post])
    
    if @post.save
      respond_to do |format|
        format.html { redirect_to root_url, :notice => "Post was successfully created." }
        format.json { render :json => @post, :status => :created, :location => post_url(@post) }
      end
    else
      respond_to do |format|
        format.html { render :action => "new" }
        format.json { render :json => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @post = Post.find(params[:id])
    
    if @post.update_attributes(params[:post])
      respond_to do |format|
        format.html { redirect_to root_url, :notice => "Post was successfully updated." }
        format.json { head :ok }
      end
    else
      respond_to do |format|
        format.html { render :action => "edit" }
        format.json { render :json => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
      
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :ok }
    end
  end

end
