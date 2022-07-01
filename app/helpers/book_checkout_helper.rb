module BookCheckoutHelper

    def projected_pickup_date
        d = Date.today + 3.days
    end

    def projected_due_date
        d = projected_pickup_date + 3.weeks
    end

    def pickup_date
        d = @book.updated_at + 3.days
    end

    def due_date
        d = pickup_date + 3.weeks
    end

end
