require 'spec_helper'

describe Purchase do
  it "should respond to methods for each status" do
  	STATUSES = %w(in_progress submitted approved shipped received)
  	STATUSES.each do |status|
  		Purchase.respond_to?("all_#{status}").should eq(true)
  	end
  end

  it "should have accessors for each status" do
  	STATUSES = %w(in_progress submitted approved shipped received)
  	purchase = Purchase.create
  	STATUSES.each do |status|
  		purchase.respond_to?("#{status}?").should eq(true)
  	end
  end
end
