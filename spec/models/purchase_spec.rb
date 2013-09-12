require 'spec_helper'

describe Purchase do
  it "should respond to methods for each status" do
  	STATUSES = %w(in_progress submitted approved shipped received)
  	STATUSES.each do |status|
  		Purchase.respond_to?("all_#{status}").should eq(true)
  	end
  end
end
