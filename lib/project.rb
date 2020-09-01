class Project

    attr_accessor :title
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer_instance)
        ProjectBacker.new(self, backer_instance)
    end

    def backers
        ProjectBacker.all.filter{|el| el.project == self}.map{|projects| projects.backer}
    end

end