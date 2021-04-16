module ShopsHelper
    def hours
        hours = []
        24.times do |d|
            hours << d
        end
        return hours
    end

    def opening_hour(shop)
        shop.opening_hours.first
    end

    def start_at(hour)
        hour.start_at ? I18n.l(hour.start_at, format: "%H:%M") : ""
    end

    def end_at(hour)
        hour.end_at ? I18n.l(hour.end_at, format: "%H:%M") : ""
    end

    def second_start_at(hour)
        hour.second_start_at ? I18n.l(hour.second_start_at, format: "%H:%M") : "" 
    end

    def second_end_at(hour)
        hour.second_end_at ? I18n.l(hour.second_end_at, format: "%H:%M") : ""
    end
    def isClosed?(hour)
        return true if hour.start_at.nil? && hour.end_at.nil? && hour.second_start_at.nil? && hour.second_end_at.nil?
    end
end
