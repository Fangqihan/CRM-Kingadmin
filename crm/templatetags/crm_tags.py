from django.template import Library

register = Library()

@register.simple_tag
def replace_str(s):
    return str(s).replace('.','_')




