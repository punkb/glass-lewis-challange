require 'jobs'
require './data/test_data.rb'

describe JobsSchedule do

	describe ".run_jobs" do
		context "given job_list_case1" do
			it "should give Job_list_case1_expected" do 
				expect(JobsSchedule.run_jobs(Job_list_case1)).to eq(Job_list_case1_expected)
			end
		end
	end


	describe ".run_jobs" do
		context "given Job_list_case2" do
			it "should give job_list_case2_expected" do 
				expect(JobsSchedule.run_jobs(Job_list_case2)).to eq(Job_list_case2_expected)
			end
		end
	end


	describe ".run_jobs" do
		context "given job_list_case3" do
			it "should give job_list_case3_expected" do 
				expect(JobsSchedule.run_jobs(Job_list_case3)).to eq(Job_list_case3_expected)
			end
		end
	end

	describe ".run_jobs" do
		context "given job_list_case4" do
			it "should give job_list_case4_expected" do 
				expect(JobsSchedule.run_jobs(Job_list_case4)).to eq(Job_list_case4_expected)
			end
		end
	end

	describe ".run_jobs" do
		context "given job_list_case5" do
			it "should raise and Error as 'Job can not depend on themselves'" do 
				expect{JobsSchedule.run_jobs(Job_list_case5)}.to raise_error(ArgumentError)
			end
		end
	end

	describe ".run_jobs" do
		context "given job_list_case7" do
			it "should raise and Error as 'Job can not depend on themselves'" do 
				expect{JobsSchedule.run_jobs(Job_list_case7)}.to raise_error(ArgumentError)
			end
		end
	end


	# describe ".run_jobs" do
	# 	context "given job_list_case5" do
	# 		it "should raise and Error as 'Job can not depend on themselves'" do 
	# 			expect(JobsSchedule.run_jobs(Job_list_case6)).to eq(Job_list_case4_expected)
	# 		end
	# 	end
	# end

	describe ".run_jobs" do
		context "given job_list_case8" do
			it "should give job_list_case8_expected" do 
				expect(JobsSchedule.run_jobs(Job_list_case8)).to eq(Job_list_case8_expected)
			end
		end
	end



end