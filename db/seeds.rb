
def create_users(num)
  num.times do 
    User.create(name: Faker::Name.name, email: Faker::Internet.email, password:"password")
  end
end
create_users(10)

def create_posts(num)
  users = User.all
  num.times do
    Post.create(title: Faker::Company.bs, body: Faker::Lorem.paragraphs.join("\n"), user: users.sample)
  end
end
create_posts(100)

def create_comments(num)
  users = User.all
  posts = Post.all
  num.times do
    comment = Comment.create(comment: Faker::Lorem.paragraphs.join("\n"), commenter: users.sample)
    posts.sample.comments << comment
  end
end
create_comments(1000)

def create_nested_comments(num)
  users = User.all
  comments = Comment.all
  num.times do
    comment = Comment.create(comment: Faker::Lorem.paragraphs.join("\n"), commenter: users.sample)
    comments << comment
    comments.sample.comments << comment
  end
end
create_nested_comments(2000)


User.create(:name => "test", :email => "test@test.com", :password => "password")
