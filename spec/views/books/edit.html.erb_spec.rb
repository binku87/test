require 'spec_helper'

describe "books/edit.html.erb" do
  before(:each) do
    @book = assign(:book, stub_model(Book))
  end

  it "renders the edit book form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => book_path(@book), :method => "post" do
    end
  end
end
