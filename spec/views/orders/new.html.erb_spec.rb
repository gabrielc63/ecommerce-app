require 'rails_helper'

RSpec.describe "orders/new", :type => :view do
  before(:each) do
    assign(:order, Order.new(
      :address => "MyText",
      :quantity => 1,
      :product => nil,
      :user => nil
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "textarea#order_address[name=?]", "order[address]"

      assert_select "input#order_quantity[name=?]", "order[quantity]"

      assert_select "input#order_product[name=?]", "order[product]"

      assert_select "input#order_user[name=?]", "order[user]"
    end
  end
end
