class TestController < ApplicationController
	def index
	end

	def get_meta
		# require 'net/http'

		# url = URI.parse(params[:url])
		# req = Net::HTTP::Get.new(url.to_s)
		# res = Net::HTTP.start(url.host, url.port) {|http|
		#   http.request(req)
		# }
		##https://github.com/jaimeiniesta/metainspector

		page = MetaInspector.new(params[:url]);
		
		render json: page
	end
end
