module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
      base_title = "EventImp"
      if page_title.empty?
        base_title + " - A Social Calendar"
      else
        page_title + " | " + base_title + " - " + page_title
      end
   end

end
