Sitemap::Generator.instance.load :host => "ordervore.com" do

  # Sample path:
  #   path :faq
  # The specified path must exist in your routes file (usually specified through :as).

  # Sample path with params:
  #   path :faq, :params => { :format => "html", :filter => "recent" }
  # Depending on the route, the resolved url could be http://mywebsite.com/frequent-questions.html?filter=recent.

  # Sample resource:
  #   resources :articles

  # Sample resource with custom objects:
  #   resources :articles, :objects => proc { Article.published }

  # Sample resource with search options:
  #   resources :articles, :priority => 0.8, :change_frequency => "monthly"

  # Sample resource with block options:
  #   resources :activities,
  #             :skip_index => true,
  #             :updated_at => proc { |activity| activity.published_at.strftime("%Y-%m-%d") }
  #             :params => { :subdomain => proc { |activity| activity.location } }

  path :root, priority: 1
  literal "/users/sign_in", priority: 0.75
  literal "/users/sign_up", priority: 0.75
  literal "/feedback", priority: 0.5
  literal "/support", priority: 0.5
  literal "/contribute", priority: 0.5
end
