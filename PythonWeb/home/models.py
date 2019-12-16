# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Category(models.Model):
    cate_id = models.AutoField(primary_key=True)
    cate_name = models.CharField(max_length=255)
    cate_status = models.BooleanField(default=1)

    def is_active(self):
        return bool(self.active_status)
        
    def __str__(self):
        return self.cate_name

    class Meta:
        managed = False
        db_table = 'category'


class Comment(models.Model):
    comment_id = models.AutoField(primary_key=True)
    post = models.ForeignKey('Post', models.DO_NOTHING)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING, blank=True, null=True)
    content = models.TextField()
    parent_comment = models.IntegerField()
    visiter_name = models.CharField(max_length=50, blank=True, null=True)
    comment_date = models.DateField(blank=True, null=True)
    approve = models.BooleanField(default=0)

    def is_active(self):
        return bool(self.active_status)

    class Meta:
        managed = False
        db_table = 'comment'


class Contact(models.Model):
    contact_id = models.AutoField(primary_key=True)
    contact_name = models.CharField(max_length=50)
    contact_phone = models.CharField(max_length=11)
    contact_email = models.CharField(max_length=50)
    subject = models.CharField(max_length=50)
    message = models.TextField()
    status = models.BooleanField(default=1)
    date_sended = models.DateField()


    def is_active(self):
        return bool(self.active_status)
        

    class Meta:
        managed = False
        db_table = 'contact'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Post(models.Model):
    post_id = models.AutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    title = models.CharField(max_length=255)
    description = models.TextField(blank=True, null=True)
    thumbnail = models.CharField(max_length=255, blank=True, null=True)
    date_published = models.DateField(blank=True, null=True)
    comment_enabled = models.BooleanField(default=1)

    def is_active(self):
        return bool(self.active_status)
        

    class Meta:
        managed = False
        db_table = 'post'


class PostCategory(models.Model):
    cate = models.ForeignKey(Category, models.DO_NOTHING)
    post = models.ForeignKey(Post, models.DO_NOTHING)


    class Meta:
        managed = False
        db_table = 'post_category'



class Tag(models.Model):
    tag_id = models.AutoField(primary_key=True)
    post = models.ForeignKey(Post, models.DO_NOTHING)
    tag_name = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'tag'
