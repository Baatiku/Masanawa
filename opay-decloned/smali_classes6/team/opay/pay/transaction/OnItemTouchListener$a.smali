.class public Lteam/opay/pay/transaction/OnItemTouchListener$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OnItemTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/transaction/OnItemTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/transaction/OnItemTouchListener;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transaction/OnItemTouchListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/transaction/OnItemTouchListener;Lbla;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/transaction/OnItemTouchListener$a;-><init>(Lteam/opay/pay/transaction/OnItemTouchListener;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->i(Lteam/opay/pay/transaction/OnItemTouchListener;Landroid/view/MotionEvent;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 7
    .line 8
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->b(Lteam/opay/pay/transaction/OnItemTouchListener;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 15
    .line 16
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->e(Lteam/opay/pay/transaction/OnItemTouchListener;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 23
    .line 24
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->d(Lteam/opay/pay/transaction/OnItemTouchListener;)Lwka;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 31
    .line 32
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->a(Lteam/opay/pay/transaction/OnItemTouchListener;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 39
    .line 40
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->f(Lteam/opay/pay/transaction/OnItemTouchListener;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object v0, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 45
    .line 46
    invoke-static {v0}, Lteam/opay/pay/transaction/OnItemTouchListener;->a(Lteam/opay/pay/transaction/OnItemTouchListener;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    if-gt p1, v0, :cond_0

    .line 57
    .line 58
    :try_start_0
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 59
    .line 60
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->d(Lteam/opay/pay/transaction/OnItemTouchListener;)Lwka;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v0, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 65
    .line 66
    invoke-static {v0}, Lteam/opay/pay/transaction/OnItemTouchListener;->h(Lteam/opay/pay/transaction/OnItemTouchListener;)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 71
    .line 72
    invoke-static {v1}, Lteam/opay/pay/transaction/OnItemTouchListener;->g(Lteam/opay/pay/transaction/OnItemTouchListener;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 77
    .line 78
    invoke-static {v2}, Lteam/opay/pay/transaction/OnItemTouchListener;->f(Lteam/opay/pay/transaction/OnItemTouchListener;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-interface {p1, v0, v1, v2}, Lwka;->b(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    :cond_0
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 91
    .line 92
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->c(Lteam/opay/pay/transaction/OnItemTouchListener;)Landroid/view/GestureDetector;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 101
    .line 102
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->e(Lteam/opay/pay/transaction/OnItemTouchListener;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->i(Lteam/opay/pay/transaction/OnItemTouchListener;Landroid/view/MotionEvent;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->i(Lteam/opay/pay/transaction/OnItemTouchListener;Landroid/view/MotionEvent;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 7
    .line 8
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->b(Lteam/opay/pay/transaction/OnItemTouchListener;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 15
    .line 16
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->e(Lteam/opay/pay/transaction/OnItemTouchListener;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 23
    .line 24
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->d(Lteam/opay/pay/transaction/OnItemTouchListener;)Lwka;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 31
    .line 32
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->a(Lteam/opay/pay/transaction/OnItemTouchListener;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 39
    .line 40
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->f(Lteam/opay/pay/transaction/OnItemTouchListener;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object v0, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 45
    .line 46
    invoke-static {v0}, Lteam/opay/pay/transaction/OnItemTouchListener;->a(Lteam/opay/pay/transaction/OnItemTouchListener;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    if-gt p1, v0, :cond_0

    .line 57
    .line 58
    :try_start_0
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 59
    .line 60
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->d(Lteam/opay/pay/transaction/OnItemTouchListener;)Lwka;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v0, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 65
    .line 66
    invoke-static {v0}, Lteam/opay/pay/transaction/OnItemTouchListener;->h(Lteam/opay/pay/transaction/OnItemTouchListener;)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 71
    .line 72
    invoke-static {v1}, Lteam/opay/pay/transaction/OnItemTouchListener;->g(Lteam/opay/pay/transaction/OnItemTouchListener;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 77
    .line 78
    invoke-static {v2}, Lteam/opay/pay/transaction/OnItemTouchListener;->f(Lteam/opay/pay/transaction/OnItemTouchListener;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-interface {p1, v0, v1, v2}, Lwka;->a(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v1, "GestureListener-onLongPress(): "

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    :cond_0
    :goto_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->i(Lteam/opay/pay/transaction/OnItemTouchListener;Landroid/view/MotionEvent;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 7
    .line 8
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->b(Lteam/opay/pay/transaction/OnItemTouchListener;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 15
    .line 16
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->e(Lteam/opay/pay/transaction/OnItemTouchListener;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 23
    .line 24
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->d(Lteam/opay/pay/transaction/OnItemTouchListener;)Lwka;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 31
    .line 32
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->a(Lteam/opay/pay/transaction/OnItemTouchListener;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 39
    .line 40
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->f(Lteam/opay/pay/transaction/OnItemTouchListener;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object v0, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 45
    .line 46
    invoke-static {v0}, Lteam/opay/pay/transaction/OnItemTouchListener;->a(Lteam/opay/pay/transaction/OnItemTouchListener;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    if-gt p1, v0, :cond_0

    .line 57
    .line 58
    :try_start_0
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 59
    .line 60
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->d(Lteam/opay/pay/transaction/OnItemTouchListener;)Lwka;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v0, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 65
    .line 66
    invoke-static {v0}, Lteam/opay/pay/transaction/OnItemTouchListener;->h(Lteam/opay/pay/transaction/OnItemTouchListener;)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 71
    .line 72
    invoke-static {v1}, Lteam/opay/pay/transaction/OnItemTouchListener;->g(Lteam/opay/pay/transaction/OnItemTouchListener;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 77
    .line 78
    invoke-static {v2}, Lteam/opay/pay/transaction/OnItemTouchListener;->f(Lteam/opay/pay/transaction/OnItemTouchListener;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-interface {p1, v0, v1, v2}, Lwka;->b(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    :cond_0
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener$a;->a:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 91
    .line 92
    invoke-static {p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->e(Lteam/opay/pay/transaction/OnItemTouchListener;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    return p1
.end method
