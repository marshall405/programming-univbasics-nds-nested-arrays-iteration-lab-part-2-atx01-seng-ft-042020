def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  results = []

  src.length.times do |index|
    num = src[index][0]
    src[index].length.times do |inner_index|
      if src[index][inner_index] < num
        num = src[index][inner_index]
      end
    end
    results << num
  end
end