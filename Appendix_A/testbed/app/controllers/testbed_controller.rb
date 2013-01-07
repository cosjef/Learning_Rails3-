class TestbedController < ApplicationController
  def index
  	# @result = "Hello, Jeff!"
  	#my_array = [ [1,2,"tweet"], [3,4,"woof"], [5,6,"meow"]]
  	#@result = my_array[1][2]

  	# my_hash = { 'one' => 1, 'two' => '2', 'three' => '3'}
  	# @result = my_hash['two']

  	# @result = addThem(1, 2)
  
  	#@result = 'First is greater than or equal to last'
  	#first = 20
  	#last = 25
  	#if first < last
  #		@result = 'First is smaller than last'
 # 	else
 # 		@result = 'First is greater than or equal to last'
 # 	end

  	first=20
  	last=25
  	case 
  	when first < last
  		@result = "First is smaller than last"
  	when first == last
  		@result = "First is equal to last"
  	when first > last
  		@result = "First is greater than last"
  	end
  		
   end

#private
 #  def addThem(firstNumber, secondNumber)
 #  	firstNumber+ secondNumber
 #  end


end
