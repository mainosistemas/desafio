module ApplicationHelper
  def user_created_blog?
    current_user && current_user.blog && current_user.blog.persisted?
  end

  def datetime_signature_s(record)
    "Written by #{record.user} at #{l record.created_at, format: :short}"
  end

  def errors_for(object, options = {})
    if object && object.errors.any?
      content_tag(:div, class: 'card') do
        concat(content_tag(:div, class: 'card-header') do
          message_description = options[:message_title].present? ? options[:message_title] : ''
            "#{message_description} #{object.class.model_name.human.downcase}"
        end)
        concat(content_tag(:div, class: 'card-body') do
          concat(content_tag(:ul) do
            object.errors.full_messages.each do |msg|
              concat content_tag(:li, msg)
            end
          end)
        end)
      end
    end
  end
end
