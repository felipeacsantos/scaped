module ApplicationHelper
  def link_to_remove_fields(name, f, id)
    f.hidden_field(:_destroy, :class => "destroy")
  end

  def link_to_remove_fields2(name, f, id)
    f.hidden_field(:_destroy, :class => "destroy") + link_to_if(true, name, "javascript:remove_fields2(#{id})")
  end

  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_if(true, name, "javascript:add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
  end

  def link_to_add_fields2(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_if(true, name, "javascript:add_fields2(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
  end
end
