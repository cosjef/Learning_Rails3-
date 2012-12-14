class EntriesController < ApplicationController

def sign_in
# set the @name variable to the visitor_name request header sent back from the form	
  	@name = params[:visitor_name]
 unless @name.blank?
	@entry = Entry.create({:name => @name})
 end

@entries = Entry.all

end

end
