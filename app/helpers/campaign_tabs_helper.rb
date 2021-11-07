module CampaignTabsHelper
    
    def find_topics(campaign_tab)
        arr = Array.new
        topics = Topic.all
        topics.each do |t|
            if t.campaign_tab_id == campaign_tab.id
            arr.push(t)
            end
        end
        return arr
    end

    def find_tags(campaign_tab)
        arr = Array.new
        tag = Tag.all
        tag.each do |t|
            if t.campaign_tab_id == campaign_tab.id
            arr.push(t)
            end
        end
        return arr
    end

    def find_todo(campaign_tab)
         t = Todo.where(campaign_tab_id: campaign_tab.id).first
         if t != nil then return t , t.title else return nil end
    end
    def get_comments(c)
        return c.comments.all
    end

    
end
