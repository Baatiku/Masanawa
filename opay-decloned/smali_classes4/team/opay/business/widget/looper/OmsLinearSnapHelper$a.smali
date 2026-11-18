.class public final Lteam/opay/business/widget/looper/OmsLinearSnapHelper$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "OmsLinearSnapHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "team/opay/business/widget/looper/OmsLinearSnapHelper$a",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "dx",
        "dy",
        "",
        "onScrolled",
        "(Landroidx/recyclerview/widget/RecyclerView;II)V",
        "state",
        "onScrollStateChanged",
        "(Landroidx/recyclerview/widget/RecyclerView;I)V",
        "business-widget_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/business/widget/looper/OmsLinearSnapHelper;


# direct methods
.method public constructor <init>(Lteam/opay/business/widget/looper/OmsLinearSnapHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/widget/looper/OmsLinearSnapHelper$a;->a:Lteam/opay/business/widget/looper/OmsLinearSnapHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/business/widget/looper/OmsLinearSnapHelper$a;->a:Lteam/opay/business/widget/looper/OmsLinearSnapHelper;

    .line 10
    .line 11
    invoke-static {v0}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->i(Lteam/opay/business/widget/looper/OmsLinearSnapHelper;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lca7;

    .line 30
    .line 31
    invoke-interface {v1, p1, p2}, Lca7;->b(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    if-nez p2, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    .line 42
    .line 43
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 47
    .line 48
    iget-object v0, p0, Lteam/opay/business/widget/looper/OmsLinearSnapHelper$a;->a:Lteam/opay/business/widget/looper/OmsLinearSnapHelper;

    .line 49
    .line 50
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/LinearSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lteam/opay/business/widget/looper/OmsLinearSnapHelper$a;->a:Lteam/opay/business/widget/looper/OmsLinearSnapHelper;

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-static {v1, p2}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->k(Lteam/opay/business/widget/looper/OmsLinearSnapHelper;I)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->i(Lteam/opay/business/widget/looper/OmsLinearSnapHelper;)Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lca7;

    .line 84
    .line 85
    invoke-virtual {v1}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->o()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-interface {v0, v2}, Lca7;->onPageSelected(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 9

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    const-string v1, "recyclerView"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sub-int/2addr v1, p2

    .line 24
    sub-int/2addr v1, p3

    .line 25
    iget-object p3, p0, Lteam/opay/business/widget/looper/OmsLinearSnapHelper$a;->a:Lteam/opay/business/widget/looper/OmsLinearSnapHelper;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {p3, v2}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->j(Lteam/opay/business/widget/looper/OmsLinearSnapHelper;I)V

    .line 32
    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object p3, p0, Lteam/opay/business/widget/looper/OmsLinearSnapHelper$a;->a:Lteam/opay/business/widget/looper/OmsLinearSnapHelper;

    .line 37
    .line 38
    invoke-static {p3}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->g(Lteam/opay/business/widget/looper/OmsLinearSnapHelper;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    div-int/2addr v2, v1

    .line 43
    invoke-static {p3, v2}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->k(Lteam/opay/business/widget/looper/OmsLinearSnapHelper;I)V

    .line 44
    .line 45
    .line 46
    iget-object p3, p0, Lteam/opay/business/widget/looper/OmsLinearSnapHelper$a;->a:Lteam/opay/business/widget/looper/OmsLinearSnapHelper;

    .line 47
    .line 48
    invoke-static {p3}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->g(Lteam/opay/business/widget/looper/OmsLinearSnapHelper;)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    rem-int/2addr p3, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p3, p0, Lteam/opay/business/widget/looper/OmsLinearSnapHelper$a;->a:Lteam/opay/business/widget/looper/OmsLinearSnapHelper;

    .line 55
    .line 56
    invoke-static {p3}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->g(Lteam/opay/business/widget/looper/OmsLinearSnapHelper;)I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    :goto_0
    iget-object v2, p0, Lteam/opay/business/widget/looper/OmsLinearSnapHelper$a;->a:Lteam/opay/business/widget/looper/OmsLinearSnapHelper;

    .line 61
    .line 62
    invoke-static {v2}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->i(Lteam/opay/business/widget/looper/OmsLinearSnapHelper;)Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iget-object v3, p0, Lteam/opay/business/widget/looper/OmsLinearSnapHelper$a;->a:Lteam/opay/business/widget/looper/OmsLinearSnapHelper;

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Lca7;

    .line 83
    .line 84
    invoke-virtual {v3}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->o()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    int-to-float v6, v1

    .line 89
    invoke-static {v3, p3, v6}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->h(Lteam/opay/business/widget/looper/OmsLinearSnapHelper;IF)F

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    invoke-interface {v4, v5, v6, p3}, Lca7;->a(IFI)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    if-eqz v1, :cond_3

    .line 98
    .line 99
    iget-object p3, p0, Lteam/opay/business/widget/looper/OmsLinearSnapHelper$a;->a:Lteam/opay/business/widget/looper/OmsLinearSnapHelper;

    .line 100
    .line 101
    invoke-virtual {p3}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->n()Lfa7;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    if-eqz p3, :cond_3

    .line 106
    .line 107
    iget-object v2, p0, Lteam/opay/business/widget/looper/OmsLinearSnapHelper$a;->a:Lteam/opay/business/widget/looper/OmsLinearSnapHelper;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-ltz v3, :cond_3

    .line 114
    .line 115
    const/4 v4, 0x0

    .line 116
    :goto_2
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    if-nez v5, :cond_2

    .line 121
    .line 122
    return-void

    .line 123
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    int-to-float v6, v6

    .line 128
    int-to-float v7, p2

    .line 129
    invoke-virtual {v2, v7}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->m(F)F

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    sub-float/2addr v6, v8

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    int-to-float v8, v8

    .line 139
    sub-float/2addr v6, v8

    .line 140
    int-to-float v8, v1

    .line 141
    div-float/2addr v6, v8

    .line 142
    invoke-interface {p3, v5, v6}, Lfa7;->a(Landroid/view/View;F)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v7}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->m(F)F

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    .line 169
    if-eq v4, v3, :cond_3

    .line 170
    .line 171
    add-int/lit8 v4, v4, 0x1

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :catch_0
    :cond_3
    return-void
.end method
