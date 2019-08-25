require "test/unit/assertions"
include Test::Unit::Assertions

def flatten_array(input, output = [])
  input.each do |el|
    if el.class == Array
      # Recursively call function if element is array, to flatten arbitrarily nested arrays
      flatten_array(el, output)
    else
      output << el
    end
  end
  # Return flattened array
  output
end

assert_equal([1,2,3,4], flatten_array([1,2,3,4]), "Should return same array if no nested arrays")
assert_equal([1,2,3,4], flatten_array([1,2,3,[4]]), "Should flatten array with 2 dimensions")
assert_equal([1,2,3,4], flatten_array([1,2,[3,[4]]]), "Should flatten array with 3 dimensions")
# Could add tests for arrays with n more nested arrays, where n is an arbitrary integer. This flatten function
# will work for arrays of integers but also any other arrays.

print("No tests failed.\n")


