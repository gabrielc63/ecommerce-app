require 'rails_helper'

RSpec.describe "orders/index", :type => :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :address => "MyText",
        :quantity => 2,
        :product => nil,
        :user => nil
      ),
      Order.create!(
        :address => "MyText",
        :quantity => 2,
        :product => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
