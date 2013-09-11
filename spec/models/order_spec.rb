require 'spec_helper'

describe Order do
  it "should be processed" do
  	order = Order.new
  	order.process.should eq("Being processed...")
  end

  it "should optionally output a pdf report" do
  	order = Order.new
  	order.pdf_report.should eq("pdf...")
  end

  it "should optionally output a json report" do
  	order = Order.new
  	order.json_report.should eq("json...")
  end

  it "should optionally output a xml report" do
  	order = Order.new
  	order.xml_report.should eq("xml...")
  end

  it "should optionally output a html report" do
  	order = Order.new
  	order.html_report.should eq("html...")
  end
end
