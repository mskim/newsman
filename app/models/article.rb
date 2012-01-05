class Article < ActiveRecord::Base
  belongs_to :section
  
  def setup
    path="#{Rails.root}/public/publications/#{publication.id.to_s}/#{issue.id.to_s}/#{section.id.to_s}/#{id.to_s}"
    puts "path:#{path}"
    system("mkdir -p #{path}")
  end
  
  def publication
    Publication.find(issue.publication_id)
  end
  def issue
    Issue.find(section.issue_id)
  end
  
  def section
    Section.find(section_id)
  end
  
  #TODO need to fix this
  def width
    column_width=200
    column_width*columns + (columns-1)*20
  end
  
  def column_gap
    if section.gutter.nil?
      return 20 
    end
    section.gutter
  end
end
