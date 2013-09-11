class OrderReport
	attr_reader :order
	def initialize order
		@order = order
	end

	def pdf_report
	  	"pdf..."
	end

	def json_report
		"json..."
	end

	def xml_report
		"xml..."
	end

	def html_report
		"html..."
	end
end