namespace :newsman do
  
  desc "Setup foloder for all articles"
  task :setup => :environment do
    articles=Article.all
    articles.each do |a|
      a.setup
    end    
    
  end
  
end