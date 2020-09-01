class Backer
    
    attr_accessor :name

    def initialize(name)
        @name = name
    end


    def back_project(project_instance)
        ProjectBacker.new(project_instance, self)
    end

    def backed_projects
        ProjectBacker.all.select{|el| el.backer == self}.map{|backer| backer.project}
    end

end