from django.contrib import admin
from django_summernote.admin import SummernoteModelAdmin
from .models import News, Category, Tag, Comments

# Register your models here.

class NewsAdmin(SummernoteModelAdmin):
    summernote_fields = ('text_min', 'text')

class CommentAdmin(admin.ModelAdmin):
    list_display = ('user', 'new', 'created', 'moderation')

admin.site.register(News, NewsAdmin)
admin.site.register(Category)
admin.site.register(Tag)
admin.site.register(Comments, CommentAdmin)

