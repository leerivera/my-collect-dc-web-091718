#you are writing a method that behaves just like the real `#collect` method. It should take in an argument of a #collection, iterate over that collection using a `while` loop, #and execute the code in the block you call it with for each #element in the collection (use the `yield` keyword). It should #return the modified collection. 


 student = ["Tim Jones", "Tom Smith", "Jim Campagno"]
 collection = ["ruby", "javascript", "python", "objective-c"]

 def my_collect(array)
   new_arr = [] 
  
   i=0 
   while i < array.length 
   new_arr.push yield(array[i])
   i += 1 
 end 
     new_arr
 end 


 my_collect(student) do |name| 
   name.split(" ").first 
end 
 my_collect(collection) do |lang|
 lang.upcase 
end