from django.db import models

# Create your models here.


class Category(models.Model):
    cate_id = models.AutoField(primary_key=True)
    cate_name = models.CharField(max_length=255)
    cate_status = models.TextField()  # This field type is a guess.

    class Meta:
        managed = False
        db_table = 'category'


class Comment(models.Model):
    comment_id = models.AutoField(primary_key=True)
    post_id = models.IntegerField()
    user_id = models.IntegerField(blank=True, null=True)
    content = models.TextField()
    parent_comment = models.IntegerField()
    visiter_name = models.CharField(max_length=50, blank=True, null=True)
    comment_date = models.DateField(blank=True, null=True)
    approve = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'comment'


class Post(models.Model):
    post_id = models.IntegerField(primary_key=True)
    user_id = models.IntegerField()
    title = models.CharField(max_length=255)
    description = models.TextField(blank=True, null=True)
    thumbnail = models.CharField(max_length=255, blank=True, null=True)
    date_published = models.DateField(blank=True, null=True)
    comment_enabled = models.TextField()  # This field type is a guess.

    class Meta:
        managed = False
        db_table = 'post'


class PostCategory(models.Model):
    id = models.IntegerField(primary_key=True)
    cate_id = models.IntegerField()
    post_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'post_category'


class Tag(models.Model):
    tag_id = models.IntegerField(primary_key=True)
    post_id = models.IntegerField()
    tag_name = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'tag'


class Contact(models.Model):
    contact_id = models.AutoField(primary_key=True)
    contact_name = models.CharField(max_length=50)
    contact_phone = models.CharField(max_length=11)
    contact_email = models.CharField(max_length=50)
    subject = models.CharField(max_length=50)
    message = models.TextField()
    status = models.IntegerField()
    date_sended = models.DateField()

    class Meta:
        managed = False
        db_table = 'contact'


class User(models.Model):
    user_id = models.IntegerField(primary_key=True)
    username = models.CharField(max_length=50)
    pass_field = models.CharField(db_column='pass', max_length=100)  # Field renamed because it was a Python reserved word.
    full_name = models.CharField(max_length=255)
    avatar = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'user'
