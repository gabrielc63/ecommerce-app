require 'rails_helper'

RSpec.describe "orders/edit", :type => :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :address => "MyText",
      :quantity => 1,
      :product => nil,
      :user => nil
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "textarea#order_address[name=?]", "order[address]"

      assert_select "input#order_quantity[name=?]", "order[quantity]"

      assert_select "input#order_product[name=?]", "order[product]"

      assert_select "input#order_user[name=?]", "order[user]"
    end
  end
end
