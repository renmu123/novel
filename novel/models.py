from django.db import models
from django.urls import reverse

class Tag(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name

class Category(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name

class Part(models.Model):
    name = models.IntegerField()
    def __str__(self):
        return str(self.name)

class Post(models.Model):
    # 文章标题
    title = models.CharField(max_length=70)
    # 作者
    author = models.CharField(max_length=100)
    # 插画
    illustrator= models.CharField(max_length=100)
    # 评分
    score = models.IntegerField(default=10)
    # 文章正文，我们使用了 TextField。
    # 存储比较短的字符串可以使用 CharField，但对于文章的正文来说可能会是一大段文本，因此使用 TextField 来存储大段文本。
    body = models.TextField()
    # 创建时间
    created_time = models.DateField(auto_now=True)
    # 摘要
    excerpt = models.CharField(max_length=200, blank=True)
    # 标签
    tags = models.ManyToManyField(Tag, blank=True)
    # 分类
    category = models.ForeignKey(Category)
    # 章节
    part= models.ManyToManyField(Part, blank=True)
    # 图片
    image_name = models.FileField(upload_to="static/images")


    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('novel:detail', kwargs={'pk':pk})