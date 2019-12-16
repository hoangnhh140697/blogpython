from django.contrib import admin
from .models import Post, PostCategory, Category, Tag, Contact, AuthUser, Comment
from django import forms
from django.db import models

# Register your models here.
class PostAdmin(admin.ModelAdmin):
    list_display = ('title', 'get_name', 'date_published', 'comment_enabled')
    list_filter = ['date_published']
    search_fields = ['title']

    def get_name(self, obj):
        return obj.user.username
    get_name.admin_order_field = 'username'
    get_name.short_description = 'User'

    #Get Form
    def get_form(self, request, obj=None, **kwargs):
        form = super(PostAdmin, self).get_form(request, obj, **kwargs)
        form.base_fields['user'].label_from_instance = lambda obj: "{}".format(obj.username)
        return form
admin.site.register(Post, PostAdmin)


class PostCategoryAdmin(admin.ModelAdmin):
    list_display = ('get_name', 'post_id')
    list_filter = ['cate']
    search_fields = ['cate__cate_name']
    def get_name(self, obj):
        return obj.cate.cate_name
    get_name.admin_order_field = 'cate_name'
    get_name.short_description = 'Category Name'

    #Get Form
    def get_form(self, request, obj=None, **kwargs):
        form = super(PostCategoryAdmin, self).get_form(request, obj, **kwargs)
        form.base_fields['cate'].label_from_instance = lambda obj: "{}".format(obj.cate_name)
        form.base_fields['post'].label_from_instance = lambda obj: "{}".format(obj.title)
        return form
admin.site.register(PostCategory, PostCategoryAdmin)

class CategoryAdmin(admin.ModelAdmin):
    list_display = ['cate_name', 'cate_status']
    list_filter = ['cate_name']
    search_fields = ['cate_name']
admin.site.register(Category, CategoryAdmin)

class TagAdmin(admin.ModelAdmin):
    list_display = ('tag_name', 'get_name')
    list_filter = ['tag_name']
    search_fields = ['tag_name']

    def get_name(self, obj):
        return obj.post.title
    get_name.admin_order_field = 'title'
    get_name.short_description = 'Post Title'

    def get_form(self, request, obj=None, **kwargs):
        form = super(TagAdmin, self).get_form(request, obj, **kwargs)
        form.base_fields['post'].label_from_instance = lambda obj: "{}".format(obj.title)
        return form
admin.site.register(Tag, TagAdmin)

class ContactAdmin(admin.ModelAdmin):
    list_display = ['contact_name', 'date_sended']
    list_filter = ['date_sended']
    search_fields = ['contact_name']
admin.site.register(Contact, ContactAdmin)

def approve(self, obj):
    return obj.approve > 0


class CommentAdmin(admin.ModelAdmin):
    list_display = ('get_post', 'visiter_name', 'comment_date','approve')
    list_filter = ['comment_date']
    search_fields = ['content']

    def get_user(self, obj):
        return obj.user.username
    get_user.admin_order_field = 'username'
    get_user.short_description = 'User'

    def get_post(self, obj):
        return obj.post.title
    get_post.admin_order_field = 'title'
    get_post.short_description = 'Post Title'

    
admin.site.register(Comment, CommentAdmin)