from django.shortcuts import render, get_object_or_404, redirect
from .models import News, Comments
from .forms import CommentForm
# Create your views here.

def news_list(request):
    """Вывод Всех Новостей"""
    news = News.objects.all()
    return render(request, 'post/news_list.html', {'news': news})

def new_single(request, pk):
    """Вывод Одной Статьи (с комментами) """
    new = get_object_or_404(News, id=pk)
    comment = Comments.objects.filter(new=pk)
    if request.method == 'POST':
        form = CommentForm(request.POST)
        if form.is_valid():
            form = form.save(commit=False)
            form.user = request.user
            form.new = new
            form.save()
            return redirect(new_single, pk)
    else:
        form = CommentForm()
    return render(request, 'post/new_single.html', {'new': new, 'comments': comment, 'form': form})
