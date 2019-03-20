class BodyClassTag < Liquid::Tag  

  def prefixed_body_class(prefix, id)
    id = id.to_s.gsub(/\.\w*?$/, '') # Remove extension from url
    id = id.to_s.gsub(/[\/]/, '-')  # Replace '/' with '-'
    id = id.to_s.gsub(/^-/, '')      # Remove leading '-'
    id = id.to_s.gsub(/-$/, '')     # Remove trailing '-'

    "#{id}"
  end

  def render(context)
    page = context.environments.first["page"]
    classes = []

    %w[class url category layout].each do |prop|
      next unless page.has_key?(prop)
      if page[prop].kind_of?(Array)
        page[prop].each { |proper| classes.push prefixed_body_class(prop, proper) }
      else
        classes.push prefixed_body_class(prop, page[prop])
      end
    end

    classes.join(" ")
  end

end
Liquid::Template.register_tag('body_class', BodyClassTag)