from django.template import Library

register = Library()

import re

@register.filter
def compare(value,pattern):
    if re.fullmatch(pattern,value):
        return True
    return False


