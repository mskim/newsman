# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'word_generator'
def range_rand(min,max)
  min + rand(max-min)
end

publication=Publication.find_or_create_by_id(:id=>1, :name=>"Our Town News", :size=>"Tabloid", :frequency=>"Daily")

issue=Issue.find_or_create_by_id(:id=>1, :publication_id=>1, :date=>Time.now)

sections=%w{World Politics Economy Art Sports}
sections.each do |section_name|
  section=Section.find_or_create_by_section_name(:section_name=>section_name, :issue_id=>issue.id)
  
  range_rand(4,6).times do |i|
    title=generate_sentense_of(1,3).capitalize
    author=generate_sentense_of(1,1).capitalize
    text=generate_sentense_of(20,60)
    columns=range_rand(1,5)
    a=Article.find_or_create_by_id_and_section_id(:id=>i, :section_id=>section.id, :title=>title, :author=>author, :text=>text, :columns=>columns)
    a.setup
  end
end