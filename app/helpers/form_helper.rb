module FormHelper

  def new_button(klass)
    link = link_to(fa_icon("plus-circle", text: t("titles.new")),
                   [:new, klass], class: "btn btn-success")
    cols = content_tag(:div, link, class: "col-xs-4 col-sm-6 col-md-8")

    content_tag(:div, cols, class: "row")
  end

  def edit_button(object)
    link_to fa_icon("edit"), [:edit, object], class: "btn btn-sm btn-default"
  end

  def destroy_button(object)
    link_to fa_icon("trash-o"), [object], class: "btn btn-sm btn-danger",
                                          method: :delete,
                                          data: { confirm: t("titles.confirm") }
  end

  def submit_button
    submit_tag t("titles.submit"), class: "button btn btn-primary",
                                   data: { disable_with: t("titles.submiting") }
  end

  def back_button
    link_to t("titles.cancel"), :back, class: "btn btn-default"
  end

  def form_actions
    content_tag(:hr) + submit_button + " " + back_button
  end
end