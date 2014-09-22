module ApplicationHelper
  def form_group_tag(errors, &block)
    if errors.any?
      content_tag :div, capture(&block), class: 'form-group has-error'
    else
      content_tag :div, capture(&block), class: 'form-group'
    end
  end

  def up_vote_link_classes(post)
    vote = current_user.voted(post)
    if vote && vote.up_vote?
      "glyphicon glyphicon-chevron-up voted"
    else
      "glyphicon glyphicon-chevron-up "
    end
  end

  def down_vote_link_classes(post)
    vote = current_user.voted(post)
    if vote && vote.down_vote?
      "glyphicon glyphicon-chevron-down voted"
    else
      "glyphicon glyphicon-chevron-down "
    end
  end
end
