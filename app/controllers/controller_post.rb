get '/post/:id' do
  @post = Post.includes(:comments, :user).find(params[:id])
  erb :post
end

post '/post' do
  post = Post.create(params[:post])
  redirect to("/post/#{post.id}")
end

get '/reply' do
  @params[:commenter_id] = @current_user.id
  erb :_post_form
end

post '/reply' do
  Comment.create(params[:comment])
  redirect to("/post/#{params[:redirect]}")
end

post '/vote' do
  params[:user_id] = @current_user.id
  if params[:score_type] == "up"
    params[:score] = 1
  elsif params[:score_type] == "down"
    params[:score] = -1
  end
  Postvote.create(params)
  return 200
end

