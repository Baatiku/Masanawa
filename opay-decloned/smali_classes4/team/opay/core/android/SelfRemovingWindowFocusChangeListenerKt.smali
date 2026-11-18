.class public final Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt;
.super Ljava/lang/Object;
.source "SelfRemovingWindowFocusChangeListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u001a\"\u0010\u0004\u001a\u00020\u0002*\u00020\u00002\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\u0086@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/fragment/app/Fragment;",
        "Lkotlin/Function0;",
        "",
        "callback",
        "b",
        "(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Ljr2;)Ljava/lang/Object;",
        "sdk_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic a(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt;->c(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Ljr2;)Ljava/lang/Object;
    .locals 6
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt$doOnWindowFocus$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt$doOnWindowFocus$1;

    .line 7
    .line 8
    iget v1, v0, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt$doOnWindowFocus$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt$doOnWindowFocus$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt$doOnWindowFocus$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt$doOnWindowFocus$1;-><init>(Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt$doOnWindowFocus$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt$doOnWindowFocus$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt$doOnWindowFocus$1;->L$1:Ljava/lang/Object;

    .line 39
    .line 40
    move-object p1, p0

    .line 41
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 42
    .line 43
    iget-object p0, v0, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt$doOnWindowFocus$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Landroidx/fragment/app/Fragment;

    .line 46
    .line 47
    invoke-static {p2}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    invoke-static {p2}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iput-object p0, v0, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt$doOnWindowFocus$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object p1, v0, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt$doOnWindowFocus$1;->L$1:Ljava/lang/Object;

    .line 65
    .line 66
    iput v3, v0, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt$doOnWindowFocus$1;->label:I

    .line 67
    .line 68
    const-wide/16 v4, 0xc8

    .line 69
    .line 70
    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-ne p2, v1, :cond_3

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_3
    :goto_1
    invoke-static {p0}, Lteam/opay/pay/base/FragmentKt;->m(Landroidx/fragment/app/Fragment;)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-nez p2, :cond_4

    .line 82
    .line 83
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    if-eqz p2, :cond_5

    .line 91
    .line 92
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    if-eqz p2, :cond_5

    .line 97
    .line 98
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    if-eqz p2, :cond_5

    .line 103
    .line 104
    invoke-virtual {p2}, Landroid/view/View;->hasWindowFocus()Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-ne p2, v3, :cond_5

    .line 109
    .line 110
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    return-object p0

    .line 116
    :cond_5
    new-instance p2, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListener;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    new-instance v1, Lhfd;

    .line 126
    .line 127
    invoke-direct {v1, p0, p1}, Lhfd;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {p2, v0, v1}, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListener;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    if-eqz p0, :cond_6

    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    if-eqz p0, :cond_6

    .line 144
    .line 145
    invoke-virtual {p0, p2}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 146
    .line 147
    .line 148
    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 149
    .line 150
    return-object p0
.end method

.method public static final c(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v3, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt$doOnWindowFocus$focusChangeListener$1$1;

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    invoke-direct {v3, p1, p0}, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt$doOnWindowFocus$focusChangeListener$1$1;-><init>(Lkotlin/jvm/functions/Function0;Ljr2;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method
