class HomePage < SitePrism::Page
  set_url "/"

  element :title, "h1"
  element :get_started, :button, "Get Started"
end
