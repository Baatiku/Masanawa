.class public Lteam/opay/pay/transaction/OnItemTouchListener;
.super Ljava/lang/Object;
.source "OnItemTouchListener.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transaction/OnItemTouchListener$a;
    }
.end annotation


# instance fields
.field public a:Lteam/opay/pay/android/ClickBounds;

.field public b:Landroid/view/View;

.field public c:I

.field public final d:Landroid/view/GestureDetector;

.field public final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lteam/opay/pay/android/ClickBounds;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Lwka;

.field public h:I

.field public i:Z

.field public j:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public k:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->e:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/transaction/OnItemTouchListener$a;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lteam/opay/pay/transaction/OnItemTouchListener$a;-><init>(Lteam/opay/pay/transaction/OnItemTouchListener;Lbla;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Landroid/view/GestureDetector;

    .line 18
    .line 19
    invoke-direct {v1, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->d:Landroid/view/GestureDetector;

    .line 23
    .line 24
    return-void
.end method

.method public static bridge synthetic a(Lteam/opay/pay/transaction/OnItemTouchListener;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->j:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic b(Lteam/opay/pay/transaction/OnItemTouchListener;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->i:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic c(Lteam/opay/pay/transaction/OnItemTouchListener;)Landroid/view/GestureDetector;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->d:Landroid/view/GestureDetector;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic d(Lteam/opay/pay/transaction/OnItemTouchListener;)Lwka;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->g:Lwka;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic e(Lteam/opay/pay/transaction/OnItemTouchListener;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic f(Lteam/opay/pay/transaction/OnItemTouchListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->h:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic g(Lteam/opay/pay/transaction/OnItemTouchListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic h(Lteam/opay/pay/transaction/OnItemTouchListener;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->b:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic i(Lteam/opay/pay/transaction/OnItemTouchListener;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/transaction/OnItemTouchListener;->o(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public j(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public k(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->e:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->e:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lteam/opay/pay/android/ClickBounds;

    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/pay/android/ClickBounds;->c()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, p1

    .line 23
    invoke-virtual {v1, v2}, Lteam/opay/pay/android/ClickBounds;->j(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lteam/opay/pay/android/ClickBounds;->b()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    add-int/2addr v2, p1

    .line 31
    invoke-virtual {v1, v2}, Lteam/opay/pay/android/ClickBounds;->h(I)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public l(ILandroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->e:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lteam/opay/pay/android/ClickBounds;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-int v5, v1, v2

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    add-int v6, v1, v2

    .line 38
    .line 39
    move-object v1, v0

    .line 40
    move-object v2, p2

    .line 41
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/android/ClickBounds;-><init>(Landroid/view/View;IIII)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->e:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->e:Landroid/util/SparseArray;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lteam/opay/pay/android/ClickBounds;

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    add-int/2addr v2, v3

    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    add-int/2addr v3, p2

    .line 84
    invoke-virtual {p1, v0, v1, v2, v3}, Lteam/opay/pay/android/ClickBounds;->i(IIII)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public n(Lwka;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->g:Lwka;

    .line 2
    .line 3
    return-void
.end method

.method public final o(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    iget-object v3, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->e:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ge v2, v3, :cond_3

    .line 18
    .line 19
    iget-object v3, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->e:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lteam/opay/pay/android/ClickBounds;

    .line 26
    .line 27
    invoke-virtual {v3}, Lteam/opay/pay/android/ClickBounds;->d()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    int-to-float v4, v4

    .line 32
    cmpl-float v4, v0, v4

    .line 33
    .line 34
    if-ltz v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3}, Lteam/opay/pay/android/ClickBounds;->e()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    int-to-float v4, v4

    .line 41
    cmpg-float v4, v0, v4

    .line 42
    .line 43
    if-gtz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3}, Lteam/opay/pay/android/ClickBounds;->f()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    int-to-float v4, v4

    .line 50
    cmpl-float v4, p1, v4

    .line 51
    .line 52
    if-ltz v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v3}, Lteam/opay/pay/android/ClickBounds;->a()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    int-to-float v4, v4

    .line 59
    cmpg-float v4, p1, v4

    .line 60
    .line 61
    if-gtz v4, :cond_1

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    iput-boolean v4, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->f:Z

    .line 65
    .line 66
    iget-object v4, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->a:Lteam/opay/pay/android/ClickBounds;

    .line 67
    .line 68
    if-nez v4, :cond_0

    .line 69
    .line 70
    iput-object v3, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->a:Lteam/opay/pay/android/ClickBounds;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_0
    invoke-virtual {v3}, Lteam/opay/pay/android/ClickBounds;->d()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    iget-object v5, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->a:Lteam/opay/pay/android/ClickBounds;

    .line 78
    .line 79
    invoke-virtual {v5}, Lteam/opay/pay/android/ClickBounds;->d()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-lt v4, v5, :cond_2

    .line 84
    .line 85
    invoke-virtual {v3}, Lteam/opay/pay/android/ClickBounds;->e()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    iget-object v5, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->a:Lteam/opay/pay/android/ClickBounds;

    .line 90
    .line 91
    invoke-virtual {v5}, Lteam/opay/pay/android/ClickBounds;->e()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-gt v4, v5, :cond_2

    .line 96
    .line 97
    invoke-virtual {v3}, Lteam/opay/pay/android/ClickBounds;->f()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    iget-object v5, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->a:Lteam/opay/pay/android/ClickBounds;

    .line 102
    .line 103
    invoke-virtual {v5}, Lteam/opay/pay/android/ClickBounds;->f()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-lt v4, v5, :cond_2

    .line 108
    .line 109
    invoke-virtual {v3}, Lteam/opay/pay/android/ClickBounds;->a()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    iget-object v5, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->a:Lteam/opay/pay/android/ClickBounds;

    .line 114
    .line 115
    invoke-virtual {v5}, Lteam/opay/pay/android/ClickBounds;->a()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-gt v4, v5, :cond_2

    .line 120
    .line 121
    iput-object v3, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->a:Lteam/opay/pay/android/ClickBounds;

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    iget-object v3, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->a:Lteam/opay/pay/android/ClickBounds;

    .line 125
    .line 126
    if-nez v3, :cond_2

    .line 127
    .line 128
    iput-boolean v1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->f:Z

    .line 129
    .line 130
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    iget-boolean p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->f:Z

    .line 134
    .line 135
    if-eqz p1, :cond_4

    .line 136
    .line 137
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->e:Landroid/util/SparseArray;

    .line 138
    .line 139
    iget-object v0, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->a:Lteam/opay/pay/android/ClickBounds;

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    iput p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->c:I

    .line 150
    .line 151
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->a:Lteam/opay/pay/android/ClickBounds;

    .line 152
    .line 153
    invoke-virtual {p1}, Lteam/opay/pay/android/ClickBounds;->g()Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iput-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->b:Landroid/view/View;

    .line 158
    .line 159
    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->a:Lteam/opay/pay/android/ClickBounds;

    .line 161
    .line 162
    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->j:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->j:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->d:Landroid/view/GestureDetector;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->d:Landroid/view/GestureDetector;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 30
    .line 31
    .line 32
    iget-boolean p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->f:Z

    .line 33
    .line 34
    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "onTouchEvent(): "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/pay/transaction/OnItemTouchListener;->d:Landroid/view/GestureDetector;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
