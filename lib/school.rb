# code here!
require 'pry'
class School

    attr_accessor :roster, :add_student

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
        # temp = []
        # if @roster[grade] == [grade]] || @roster[grade] == []
        #     temp << name
        #     @roster[grade] = temp
        # end
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
   #     binding.pry
        hash = {}
        @roster.each do |grades, students|
        hash[grades] = students.sort
        end
        hash
    end
    
end