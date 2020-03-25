module ApplicationHelper
    def readable_date(date)
        date.strftime("%d, %^b %C")
    end
    def readable_time(time)
        time.strftime("%l:%M %p")
    end

    def author_of(record)
        user_signed_in? && current_user.id == record.user_id
    end

    def admin?
        user_signed_in? && current_user.admin?
    end
end
