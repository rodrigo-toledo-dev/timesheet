module ApplicationHelper
  def active_class(link_path)
    # is_current = request.full_path == link_path
    current_page?(link_path) ? "navbar-nav active" : "navbar-nav"
  end
end
