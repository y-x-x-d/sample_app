class StaticPagesController < ApplicationController
  def home
    #=> "app/views/リソース名/アクション名.html.erb"
    #=> "qpp/views/static_pages/home.html.erb"
  end

  def help
  end
  
  def about
     #=> "qpp/views/static_pages/about.html.erb"
  end
  
  def contact
  end
end
