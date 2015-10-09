require "jobs/version"

class JobsSchedule

  def self.run_jobs(jobs)
  	@job_order = Array.new
  	@dependant_jobs = Array.new

  	jobs.each do |element|
  		if element.length == 2
  			if element[0].eql?(element[1]) 
  			   raise ArgumentError, "Jobs can not depend on themselves"
  		    end
  			@dependant_jobs << element
  			

  		elsif element.length == 1
  			@job_order << element[0]
  				
  		end
  	
  	end

  	if @dependant_jobs.length > 1
  	    check_for_errors(@dependant_jobs)
    end


  	process_dependant_jobs(@dependant_jobs)
  	puts @job_order
  	return @job_order
  	
  end

  def self.check_for_errors(dependant_jobs)

  	dependant_jobs.each do |element|

  	for i in 0..(dependant_jobs.length-1)
  		for k in (i+1)..(dependant_jobs.length-1)
  			if (dependant_jobs[i])-(dependant_jobs[k]) == []
  				raise ArgumentError, "Jobs can not depend on themselves"
  			end
  		end
  	end
  	end
  	
  end


  def self.process_dependant_jobs(dependant_jobs)
  	dependant_jobs.each do |element|
  		@job_order.push(element[1]) unless @job_order.include?(element[1])
  		@job_order.push(element[0]) unless @job_order.include?(element[0])
  	end
  	
  end

end
