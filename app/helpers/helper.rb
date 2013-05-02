helpers do

  def current_user
    if session[:id]
      @current_user ||= User.find(session[:id])
    end
  end

  def partial(template, locals = {})
    erb(template, :layout => false, :locals => locals)
  end

  def date(date)
    date.strftime("%Y/%M/%D %I:%M%p")
  end

  def post_body
    @post.body.gsub(/\n/,"<br><br>")
  end

  def comment_body(comment)
    comment.comment.gsub(/\n/,"<br><br>")
  end
end

