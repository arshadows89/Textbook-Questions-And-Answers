# Create the data structure that you created in the previous example for Joe Smith using loops instead of assignment. Some helpful methods might be the Array shift and first method.
contacts.each do |person, hash_key|
fields.each do |hash_value|
hash_key[hash_value] = contact_data.shift
end
end