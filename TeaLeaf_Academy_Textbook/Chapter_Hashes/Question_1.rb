#1)Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.
# Given
#family = {  uncles: ["bob", "joe", "steve"],
#            sisters: ["jane", "jill", "beth"],
#            brothers: ["frank","rob","david"],
#            aunts: ["mary","sally","susan"]
#          }
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
immediate_family_array = []
immediate_family_hash = {}
immediate_family_hash = family.select {|title, names| (title == :sisters) || (title == :brothers)}
immediate_family_array = immediate_family_hash.to_a 
p immediate_family_array # dif then solution but my answer keeps brother and sister, which i kind of like. 