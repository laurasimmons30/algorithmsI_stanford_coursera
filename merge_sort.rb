# take an array of n length, split in half, sort halves recursively, then merge full sorted answer

array = [5, 4, 1, 8, 7, 2, 6, 3, 9]

def merge_sort(list)
  if list.length <= 1
    list
  else
    middle = (list.length / 2).floor
    left = merge_sort(list[0..middle - 1])
    right = merge_sort(list[middle..list.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end
    
puts merge_sort(array)

