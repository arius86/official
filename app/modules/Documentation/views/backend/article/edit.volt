{% do assets.addCss('assets/vendor/markdown-editor/base16-light.css') %}
{% do assets.addCss('assets/vendor/markdown-editor/default.css') %}
{% do assets.addCss('assets/documentation/css/markdown.css') %}

<div class="row widget recruiter-new">
    <div class="col-xs-12">
        <div class="widget widget-default-spacer">
            <div class="spacer spacer30"></div>
        </div>
        <div class="widget widget-page-header">
            <h3>{{ i18n._('Update article') }}</h3>
        </div>
        <div class="widget widget-default-spacer">
            <div class="spacer spacer22"></div>
        </div>
        <div class="widget widget-default-page">
            <div class="row widget">
                <div class="col-xs-12">
                    <div class="widget widget-content">                            
                        <div class="form-edit">
                            <form action="{{ url.get(['for': router.getMatchedRoute().getName(), 'action': 'update', 'params': record._id]) }}" method="POST" role="form">
                                {% for element in form %}
                                    {% do element.setAttribute('class', element.getAttribute('class')~' form-control') %}
                                    {% set hasErrors = form.hasMessagesFor(element.getName()) %}

                                    <div class="clearfix form-group{% if hasErrors %} has-error{% endif %}">
                                        {% if element.getLabel() %}
                                            <label for="{{ element.getName() }}">{{ element.getLabel() }}</label>
                                        {% endif %}
                                        {% if hasErrors %}
                                            <span class="help-block">
                                                {% for error in form.getMessagesFor(element.getName()) %}
                                                    {{ error }}
                                                {% endfor %}
                                            </span>
                                        {% endif %}
                                        {{ element }}
                                    </div>
                                {% endfor %}
                                <div class="clearfix form-group">
                                    <button type="submit" class="btn btn-flat success">Update</button>
                                    <a href="{{ url.get(['for': router.getMatchedRoute().getName(), 'action':'index']) }}" class="btn pull-right">{{ i18n._('Back to overview') }}</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="widget widget-default-spacer">
            <div class="spacer spacer30"></div>
        </div>
        <a href="{{ url.get(['for': router.getMatchedRoute().getName(), 'action':'editContent', 'params': record._id]) }}" class="btn pull-right">{{ i18n._('Content editor') }}</a>
        <h3>{{ i18n._('Preview') }}</h3>
        <div class="markdown-view">
            {{record.contentRendered}}
        </div>
    </div>
</div>
