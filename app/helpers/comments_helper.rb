module CommentsHelper
    def item_is(comment)
        if comment.commented_on_type == "Topic"
            return true
        else
            return false
        end
    end
end
