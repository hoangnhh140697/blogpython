from django.contrib import admin
from .models import Post, PostCategory, Category, Tag, Contact
# Register your models here.
class PostAdmin(admin.ModelAdmin):
    list_display = ['title', 'date_published']
    list_filter = ['date_published']
    search_fields = ['title']
admin.site.register(Post, PostAdmin)

class PostCategoryAdmin(admin.ModelAdmin):
    list_display = ['cate_id', 'post_id']
    list_filter = ['cate_id']
    search_fields = ['cate_id']
admin.site.register(PostCategory, PostCategoryAdmin)

class CategoryAdmin(admin.ModelAdmin):
    list_display = ['cate_name', 'cate_status']
    list_filter = ['cate_name']
    search_fields = ['cate_name']
admin.site.register(Category, CategoryAdmin)

class TagAdmin(admin.ModelAdmin):
    list_display = ['tag_name', 'post_id']
    list_filter = ['tag_name']
    search_fields = ['tag_name']
admin.site.register(Tag, TagAdmin)

class ContactAdmin(admin.ModelAdmin):
    list_display = ['contact_name', 'date_sended']
    list_filter = ['date_sended']
    search_fields = ['contact_name']
admin.site.register(Contact, ContactAdmin)