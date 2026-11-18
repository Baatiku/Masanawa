.class public final Lteam/opay/pay/ad/HomePaymentViewReporter;
.super Ljava/lang/Object;
.source "HomePaymentViewReporter.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J%\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J%\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0016R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u001a\u0010&\u001a\u0008\u0012\u0004\u0012\u00020#0\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u001a\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020#0\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010%\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/pay/ad/HomePaymentViewReporter;",
        "Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;",
        "<init>",
        "()V",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "",
        "k",
        "(Landroidx/recyclerview/widget/RecyclerView;Landroidx/fragment/app/Fragment;)V",
        "",
        "hasFocus",
        "onWindowFocusChanged",
        "(Z)V",
        "e",
        "j",
        "f",
        "",
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
        "list",
        "i",
        "(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V",
        "h",
        "a",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Lzr2;",
        "b",
        "Lzr2;",
        "coroutineScope",
        "Lkotlinx/coroutines/l;",
        "c",
        "Lkotlinx/coroutines/l;",
        "reportJob",
        "",
        "",
        "d",
        "Ljava/util/Set;",
        "paymentReportedIds",
        "headFunReportedIds",
        "sdk_release"
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
.field public a:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lzr2;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->d:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->e:Ljava/util/Set;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/ad/HomePaymentViewReporter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/ad/HomePaymentViewReporter;->g(Lteam/opay/pay/ad/HomePaymentViewReporter;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lteam/opay/pay/ad/HomePaymentViewReporter;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/ad/HomePaymentViewReporter;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lteam/opay/pay/ad/HomePaymentViewReporter;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/ad/HomePaymentViewReporter;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lteam/opay/pay/ad/HomePaymentViewReporter;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/ad/HomePaymentViewReporter;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final g(Lteam/opay/pay/ad/HomePaymentViewReporter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/opay/team/newhome/home/HomeAdapter;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    check-cast v0, Lcom/opay/team/newhome/home/HomeAdapter;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v0, v2

    .line 26
    :goto_0
    if-nez v0, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    sget-object v1, Lcom/opay/team/newhome/home/HomeAdapter;->k:Lcom/opay/team/newhome/home/HomeAdapter$Companion;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/opay/team/newhome/home/HomeAdapter$Companion;->a()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/HomeAdapter;->getData()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    instance-of v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    move-object p1, v2

    .line 54
    :goto_1
    if-nez p1, :cond_5

    .line 55
    .line 56
    return-void

    .line 57
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-gt v1, v3, :cond_d

    .line 66
    .line 67
    :goto_2
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-nez v4, :cond_6

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_6
    instance-of v5, v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    .line 76
    if-eqz v5, :cond_c

    .line 77
    .line 78
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 83
    .line 84
    if-nez v5, :cond_7

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_7
    invoke-virtual {v5}, Lcom/opay/team/newhome/home/bean/HomeData;->g()Lcom/opay/team/newhome/bean/CommonPayData;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    if-eqz v6, :cond_8

    .line 92
    .line 93
    invoke-virtual {v6}, Lcom/opay/team/newhome/bean/CommonPayData;->a()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    goto :goto_3

    .line 98
    :cond_8
    move-object v6, v2

    .line 99
    :goto_3
    if-nez v6, :cond_9

    .line 100
    .line 101
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    :cond_9
    invoke-virtual {v5}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    const/4 v7, 0x5

    .line 110
    if-eq v5, v7, :cond_b

    .line 111
    .line 112
    const/16 v7, 0xd

    .line 113
    .line 114
    if-eq v5, v7, :cond_a

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_a
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    .line 119
    invoke-virtual {p0, v4, v6}, Lteam/opay/pay/ad/HomePaymentViewReporter;->h(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_b
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    .line 125
    invoke-virtual {p0, v4, v6}, Lteam/opay/pay/ad/HomePaymentViewReporter;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    .line 126
    .line 127
    .line 128
    :cond_c
    :goto_4
    if-eq v1, v3, :cond_d

    .line 129
    .line 130
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_d
    :goto_5
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->c:Lkotlinx/coroutines/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iput-object v1, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    iput-object v1, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->b:Lzr2;

    .line 26
    .line 27
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Ld17;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Ld17;-><init>(Lteam/opay/pay/ad/HomePaymentViewReporter;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->e:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v2, :cond_6

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    instance-of v4, v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_1
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->w()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-ge v5, v6, :cond_5

    .line 45
    .line 46
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-static {v6}, Lteam/opay/core/android/ViewKt;->g(Landroid/view/View;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_4

    .line 55
    .line 56
    add-int v6, v5, v2

    .line 57
    .line 58
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-static {v6, v7}, Lkotlin/ranges/c;->f(II)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    move v7, v5

    .line 67
    :goto_2
    if-ge v7, v6, :cond_4

    .line 68
    .line 69
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    check-cast v8, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 74
    .line 75
    invoke-virtual {v8}, Lcom/opay/team/newhome/bean/NewBusinessData;->getId()Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    if-eqz v9, :cond_3

    .line 80
    .line 81
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-nez v9, :cond_3

    .line 89
    .line 90
    add-int/lit8 v9, v7, 0x1

    .line 91
    .line 92
    new-instance v10, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v11, "position"

    .line 98
    .line 99
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-virtual {v8}, Lcom/opay/team/newhome/bean/NewBusinessData;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    if-nez v8, :cond_2

    .line 114
    .line 115
    const-string v8, ""

    .line 116
    .line 117
    :cond_2
    invoke-static {v9, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    add-int/2addr v5, v2

    .line 128
    goto :goto_1

    .line 129
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 130
    .line 131
    .line 132
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_7

    .line 140
    .line 141
    sget-object p1, Lx7b;->a:Lx7b;

    .line 142
    .line 143
    new-array p2, v3, [Lkotlin/Pair;

    .line 144
    .line 145
    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    check-cast p2, [Lkotlin/Pair;

    .line 150
    .line 151
    array-length v0, p2

    .line 152
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    check-cast p2, [Lkotlin/Pair;

    .line 157
    .line 158
    const-string v0, "homepage_quickentry_show"

    .line 159
    .line 160
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 161
    .line 162
    .line 163
    :cond_7
    return-void
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->d:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v2, :cond_6

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    instance-of v4, v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_1
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->w()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-ge v5, v6, :cond_5

    .line 45
    .line 46
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-static {v6}, Lteam/opay/core/android/ViewKt;->g(Landroid/view/View;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_4

    .line 55
    .line 56
    add-int v6, v5, v2

    .line 57
    .line 58
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-static {v6, v7}, Lkotlin/ranges/c;->f(II)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    move v7, v5

    .line 67
    :goto_2
    if-ge v7, v6, :cond_4

    .line 68
    .line 69
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    check-cast v8, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 74
    .line 75
    invoke-virtual {v8}, Lcom/opay/team/newhome/bean/NewBusinessData;->getId()Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    if-eqz v9, :cond_3

    .line 80
    .line 81
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-nez v9, :cond_3

    .line 89
    .line 90
    add-int/lit8 v9, v7, 0x1

    .line 91
    .line 92
    new-instance v10, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v11, "position"

    .line 98
    .line 99
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-virtual {v8}, Lcom/opay/team/newhome/bean/NewBusinessData;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    if-nez v8, :cond_2

    .line 114
    .line 115
    const-string v8, ""

    .line 116
    .line 117
    :cond_2
    invoke-static {v9, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    add-int/2addr v5, v2

    .line 128
    goto :goto_1

    .line 129
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 130
    .line 131
    .line 132
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_7

    .line 140
    .line 141
    sget-object p1, Lx7b;->a:Lx7b;

    .line 142
    .line 143
    new-array p2, v3, [Lkotlin/Pair;

    .line 144
    .line 145
    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    check-cast p2, [Lkotlin/Pair;

    .line 150
    .line 151
    array-length v0, p2

    .line 152
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    check-cast p2, [Lkotlin/Pair;

    .line 157
    .line 158
    const-string v0, "Opay_show_iconshow"

    .line 159
    .line 160
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 161
    .line 162
    .line 163
    :cond_7
    return-void
.end method

.method public final j()V
    .locals 9

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->c:Lkotlinx/coroutines/l;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    iget-object v3, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->b:Lzr2;

    .line 29
    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    new-instance v6, Lteam/opay/pay/ad/HomePaymentViewReporter$scheduleReport$1;

    .line 33
    .line 34
    invoke-direct {v6, p0, v1}, Lteam/opay/pay/ad/HomePaymentViewReporter$scheduleReport$1;-><init>(Lteam/opay/pay/ad/HomePaymentViewReporter;Ljr2;)V

    .line 35
    .line 36
    .line 37
    const/4 v7, 0x3

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-static/range {v3 .. v8}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_3
    iput-object v1, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->c:Lkotlinx/coroutines/l;

    .line 46
    .line 47
    :cond_4
    :goto_0
    return-void
.end method

.method public final k(Landroidx/recyclerview/widget/RecyclerView;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fragment"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "getViewLifecycleOwner(...)"

    .line 18
    .line 19
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->b:Lzr2;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 33
    .line 34
    .line 35
    new-instance p2, Lteam/opay/pay/ad/HomePaymentViewReporter$a;

    .line 36
    .line 37
    invoke-direct {p2, p0}, Lteam/opay/pay/ad/HomePaymentViewReporter$a;-><init>(Lteam/opay/pay/ad/HomePaymentViewReporter;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    new-instance v0, Lteam/opay/pay/ad/HomePaymentViewReporter$b;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lteam/opay/pay/ad/HomePaymentViewReporter$b;-><init>(Lteam/opay/pay/ad/HomePaymentViewReporter;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    new-instance p2, Lteam/opay/pay/ad/HomePaymentViewReporter$c;

    .line 58
    .line 59
    invoke-direct {p2, p0}, Lteam/opay/pay/ad/HomePaymentViewReporter$c;-><init>(Lteam/opay/pay/ad/HomePaymentViewReporter;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->d:Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->e:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/ad/HomePaymentViewReporter;->j()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/ad/HomePaymentViewReporter;->c:Lkotlinx/coroutines/l;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method
