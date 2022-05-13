class HelloController < ActionController::Base
  def hi
    render plain: "hi"
  end
end