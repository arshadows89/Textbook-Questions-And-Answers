#Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.
bobs_info = {name: 'bob', age: '32'}
bobs_additional_info = {weight: '42', height: '5.10'}
# will alter the return
bobs_info.merge(bobs_additional_info)
#will change bobs_info to now include
bobs_info.merge!(bobs_additional_info)