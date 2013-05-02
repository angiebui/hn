before do 
  @current_user = current_user
end

get '/' do
  @posts = Post.paginate(:page => params[:page]).order('created_at DESC')
  erb :index
end




