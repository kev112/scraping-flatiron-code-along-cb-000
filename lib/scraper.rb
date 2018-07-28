require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
  def self.get_page
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))

    #expect(doc).to be_a(Nokogiri::HTML::Document)
  end

  def self.get_courses
    #expect(course_offerings.class).to be(Nokogiri::XML::NodeSet)
  end
  
  def self.make_courses
    # Course.all.each do |course|
    #   expect(course.title).to be_a String
    #   expect(course.schedule).to be_a String
    #   expect(course.description).to be_a String
    # end
  end
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
end



