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
end
