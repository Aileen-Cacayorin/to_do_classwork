class List < ActiveRecord::Base
  has_many :tasks
  validates :name, :presence => true


    def completed
      completed_tasks =[]
      self.tasks.each() do |task|
        if task.complete
          completed_tasks.push(task)
        end
      end
      return completed_tasks
    end


    def not_completed
      incomplete_tasks =[]
      self.tasks.each() do |task|
        if !task.complete
          incomplete_tasks.push(task)
        end
      end
      return incomplete_tasks
    end
end
