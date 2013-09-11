class Order < ActiveRecord::Base
  delegate :pdf_report, :json_report, :xml_report, :html_report, to: :reporter
  def process
	"Being processed..."  	
  end

  def reporter
  	OrderReport.new(self)
  end
end
