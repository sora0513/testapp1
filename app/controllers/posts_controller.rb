class PostsController < ApplicationController
#  before_filter :authenticate, :except => [:index, :show]
  
  # GET /posts
  # GET /posts.xml
  def index
    @posts = Post.all({}, :iorder => :created_at)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
      format.json { render :json => @posts }
      format.atom
    end
  end

  # GET /posts/1
  # GET /posts/1.xml
  def show
    @post = Post.get(params[:id])
    # NativeException 
    #   (com.google.appengine.api.datastore.DatastoreNeedIndexException: no matching index found.): 対応
    # @comments = (@post.comments.blank?) ? {} : @post.comments
    # @comments = @post.comments
    @comments = Comment.all(:post_id => @post.key)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.xml
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # POST /posts
  # POST /posts.xml
  def create
    @post = Post.create(:title => params[:title], :body => params[:body], :created_at => Time.now) 
    redirect_to :action => 'index'
  end
end
