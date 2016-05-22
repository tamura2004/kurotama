module ApplicationHelper
  def btn_lg(name, path)
    link_to name, path, class: "btn btn-primary btn-lg"
  end

  def btn_sm(name, path)
    link_to name, path, class: "btn btn-default btn-sm"
  end

  def panel(title,&block)
    content_tag(:div, class: %w(panel panel-default)) do
      concat content_tag(:div, title, class: "panel-heading")
      concat content_tag(:div, class: "panel-body", &block)
    end
  end

  def list_group(&block)
    content_tag(:div, class: "list-group", &block)
  end

  def list_group_item(content, method=:post)
    link_to content.name, content.path, class: "list-group-item", method: method
  end

  def list_item(name, path)
    link_to raw(name), path, class: "list-group-item"
  end

  def button_item(name, path)
    link_to raw(name), path, class: "list-group-item", method: :post
  end


  def delete_item(name, path)
    link_to raw(name), path, class: "list-group-item", method: :delete
  end

  def progress_bar(width,color,&block)
    content_tag(:div, class: "progress") do
      content_tag(:div, class: %W(progress-bar progress-bar-#{color}), role: "progress", style: "width:#{width}%",&block)
    end
  end

  def post_button_to(name,path,color=:default,&block)
    if block_given?
      link_to path, class: "btn btn-#{color} btn-block", method: :post, &block
    else
      link_to name, path, class: "btn btn-#{color} btn-block", method: :post
    end
  end

  def patch_button_to(name,path,color=:default,&block)
    if block_given?
      link_to path, class: "btn btn-#{color} btn-block", method: :patch, &block
    else
      link_to name, path, class: "btn btn-#{color} btn-block", method: :patch
    end
  end

  def delete_button_to(name,path,color=:default,&block)
    if block_given?
      link_to path, class: "btn btn-#{color} btn-block", method: :delete, &block
    else
      link_to name, path, class: "btn btn-#{color} btn-block", method: :delete
    end
  end

  def get_button_to(name,path,color=:default,&block)
    if block_given?
      link_to path, class: "btn btn-#{color} btn-block", &block
    else
      link_to name, path, class: "btn btn-#{color} btn-block"
    end
  end

end
