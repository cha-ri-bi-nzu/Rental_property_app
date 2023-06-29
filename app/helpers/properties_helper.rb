module PropertiesHelper
  def choose_url
    if edit_or_new?
      property_path
    else
      properties_path
    end
  end

  def edit_or_new?
    if action_name == 'edit' || action_name == 'update'
      true
    elsif action_name == 'new' || action_name == 'create'
      false
    end
  end
end
