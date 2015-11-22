require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products
  
  test "title" do
    product = Product.new(title:  products(:ruby).title,
                          description: "yyy",
                          price:  1,
                          image_url:  "fred.gif")
    assert product.invalid?
    assert product.errors[:title].any?
  end
  
end
