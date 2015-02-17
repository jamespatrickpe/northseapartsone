module ApplicationHelper

  def rendercorepartial(partialname,partialinks={})
    render(:partial => "core_partials/"+partialname, :locals => partialinks)
  end

  def renderItemListerButtons(description,add,minus)
      rendercorepartial("itemlisterbuttons",{ :description => description, :add => add, :minus => minus})
  end

end
