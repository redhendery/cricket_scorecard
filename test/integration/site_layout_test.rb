require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path
    get root_path
    assert_select 'title', full_title('Home')
    assert_select "a[href=?]", about_path
    get about_path
    assert_select 'title', full_title('About')
    assert_select "a[href=?]", help_path
    get help_path
    assert_select 'title', full_title('Help')
  end
end
