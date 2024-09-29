class Example
  def public_method
    puts "This is a public method"
    private_method
  end

  private

  def private_method
    puts "This is a private method"
  end

  private
  attr_reader :private_attribute

  def initialize
    @private_attribute = "This is a private attribute"
  end
end

example = Example.new
example.public_method  # Works    
# example.private_method  # Raises NoMethodError
# puts example.private_attribute  # Raises NoMethodError
