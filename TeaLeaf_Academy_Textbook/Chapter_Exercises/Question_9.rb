#Suppose you have a hash h = {a:1, b:2, c:3, d:4}
#1. Get the value of key `:b`.
#2. Add to this hash the key:value pair `{e:5}`
#3. Remove all key:value pairs whose value is less than 3.5
#1.
h[:b]
#2.
h[:e] = 5
#3.
h.delete_if {|key, value| value < 3.5}