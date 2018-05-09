# your code goes here
def begins_with_r(arr)
  boolean = true
  arr.each do |x|
    if x.start_with?("r")
       boolean = true
    else
      boolean = false
    end
  end
  return boolean
end

def contain_a(arr)
  arr.select do |x|
    x.include?("a")
  end
end

def first_wa(arr)
  arr.each do |str|
    if str[0..1] == "wa"
      return str
    end
  end
end

def remove_non_strings(arr)
  arr.delete_if { |x|
    x.class != String
  }
end

def count_elements(arr)
  temp = arr.uniq 
  temp.each do |t|
    count = 0
    arr.each do |a|
      if a == t 
        count += 1
      end 
    end 
    t[:count] = count
  end
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |keys_hash|
    keys_hash.each do |key, value|
      data.each do |data_hash|
        data_hash.each do |name, attributes|
          if name == value
            merged_data << keys_hash.merge(attributes)
          end
        end
      end
    end
  end
  return merged_data
end

def find_cool(arr)