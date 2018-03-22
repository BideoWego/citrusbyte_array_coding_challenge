class Array

  # Flattens a nested array into a shallow array without mutation.
  #
  # @return [Array] The flattened array
  def my_flatten
    result = []

    self.each do |item|
      if item.is_a?(Array)
        result.concat(item.my_flatten)
      else
        result << item
      end
    end

    result
  end

  # Flattens a nested array into a shallow array. Mutates the original array.
  #
  # @return [Array] The original array flattened
  def my_flatten!
    result = my_flatten
    clear
    concat(result)
    self
  end
end
