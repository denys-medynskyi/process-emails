class EmailProcessor
  attr_reader :email

  def initialize(email)
    @email = email
  end

  def process
    Post.create!({ body: email.body, email: email.from })
  end
end