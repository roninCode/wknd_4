# Find the needle by writing one line of code. 
# As an example, if haystack = [:hay, :needle, :hay], you'd pull it out with:
# haystack[1]

# haystack = {hay: [:hay, :hay, :hay, {hay: {hay: [:hay, {hay: [:hay, :hay, :needle]}, :hay, :hay, :hay]}}, :hay, :hay]}

haystack = {hay1: [:hay2, :hay2, :hay2, {hay3: {hay4: [:hay5, {hay6: [:hay7, :hay7, :needle]}, :hay, :hay, :hay]}}, :hay, :hay]}

haystack.each do |hay1, val|
  val[3].each do |hay3, val3|
    val3.each do |hay4, val4|
      val4[1].each do |ha6, val6|
        p val6[2]
      end
    end
  end
end