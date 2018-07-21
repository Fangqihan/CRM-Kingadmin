from django import forms
from django.forms import widgets
from django.core.exceptions import ValidationError


class CommentForm(forms.Form):
    comment = forms.CharField(
        error_messages={
            'required':'评论不能为空',
        },
        widget=forms.Textarea(attrs={'class':'form-control','name':'comment'}),)

    score = forms.IntegerField(
        error_messages={
            'required': '分数不能为空',
            'invalid': '需要输入数字',
        },
        widget=widgets.TextInput(attrs={'class':'form-control','name':'score'})
    )

    def clean_score(self):
        value = self.cleaned_data['score']
        if int(value) not in list(range(101)):
            raise ValidationError('分数必须为在0-100中间')
        return value





