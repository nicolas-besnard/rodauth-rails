require "test_helper"

class NamespaceTest < IntegrationTest
  test "requiring authentication from Rodauth app" do
    visit "/advanced_admin/dashboard"
    assert_equal current_path, "/advanced_admin/login"

    register
    visit "/advanced_admin/dashboard"

    assert_equal current_path, "/advanced_admin/dashboard"
    assert_includes page.html, %(Authenticated as user@example.com)
  end
end
