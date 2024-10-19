class TeachersController < ApplicationController
end

class TeachersController < ApplicationController
    def index
      @teachers = Teacher.all
    end
  end
  

  class TeachersController < ApplicationController
    def show
      @teacher = Teacher.find(params[:id])
    end
  end
  