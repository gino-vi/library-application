module BooksHelper

    def sortable(column, title = nil)
        title ||= column.titleize
        css_class = column == sort_column ? "cirrent #{sort_direction}" : nil
        direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
        link_to title, {:sort => column, :direction => direction}, {:class => css_class}
    end
    
end
