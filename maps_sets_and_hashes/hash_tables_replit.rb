def hash_table(array)
  fake_hash = []

  array.each do |element|
    key = element.abs % 11
    if fake_hash[key]
      fake_hash[key] << element
    else
      fake_hash[key] = [element]
    end
  end

  fake_hash.compact.flatten
end
