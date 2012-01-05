class Publication < ActiveRecord::Base
  has_many :issues
  
  def setup
    path="#{Rails.root}/public/publications/#{id.to_s}"
    puts "path:#{path}"
    system("mkdir -p #{path}")
  end
end
