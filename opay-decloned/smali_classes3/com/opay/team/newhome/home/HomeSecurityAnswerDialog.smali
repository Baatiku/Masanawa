.class public final Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;
.super Lcom/opay/team/newhome/home/Hilt_HomeSecurityAnswerDialog;
.source "HomeSecurityAnswerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/opay/team/newhome/home/Hilt_HomeSecurityAnswerDialog<",
        "Lg0b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\tJ!\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u001b\u0010 \u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0018\u001a\u0004\u0008\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006\'\u00b2\u0006\u000c\u0010&\u001a\u00020%8\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;",
        "Lteam/opay/core/base/BaseSheetInjectFragmentV2;",
        "Lg0b;",
        "<init>",
        "()V",
        "Lcom/opay/team/newhome/reward/SecurityFeel;",
        "security",
        "",
        "b0",
        "(Lcom/opay/team/newhome/reward/SecurityFeel;)V",
        "c0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "data",
        "",
        "selectName",
        "d0",
        "(Lcom/opay/team/newhome/reward/SecurityFeel;Ljava/lang/String;)V",
        "Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;",
        "q",
        "Lid8;",
        "W",
        "()Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;",
        "securityAdapter",
        "Landroidx/recyclerview/widget/GridLayoutManager;",
        "r",
        "V",
        "()Landroidx/recyclerview/widget/GridLayoutManager;",
        "gridLayout",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "s",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "itemDecoration",
        "Lcom/opay/team/newhome/viewmodel/NewPayViewModel;",
        "viewModel",
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
.field public final q:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$1;->INSTANCE:Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/opay/team/newhome/home/Hilt_HomeSecurityAnswerDialog;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ls17;

    .line 7
    .line 8
    invoke-direct {v0}, Ls17;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->q:Lid8;

    .line 16
    .line 17
    new-instance v0, Lt17;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lt17;-><init>(Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->r:Lid8;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic P(Lcom/opay/team/newhome/reward/SecurityButton;Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->g0(Lcom/opay/team/newhome/reward/SecurityButton;Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q(Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->e0(Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic R(Lcom/opay/team/newhome/reward/SecurityButton;Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->f0(Lcom/opay/team/newhome/reward/SecurityButton;Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic S(Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;)Lr0g;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->Y(Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;)Lr0g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T()Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->a0()Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic U(Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->X(Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;)Landroidx/recyclerview/widget/GridLayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final V()Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->r:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 8
    .line 9
    return-object v0
.end method

.method private final W()Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->q:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final X(Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/Hilt_HomeSecurityAnswerDialog;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final Y(Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;)Lr0g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "requireParentFragment(...)"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public static final Z(Lid8;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid8<",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel;",
            ">;)",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lid8;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final a0()Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private final b0(Lcom/opay/team/newhome/reward/SecurityFeel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->V()Landroidx/recyclerview/widget/GridLayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$a;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$a;-><init>(Lcom/opay/team/newhome/reward/SecurityFeel;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->G(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final c0(Lcom/opay/team/newhome/reward/SecurityFeel;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->s:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lg0b;

    .line 12
    .line 13
    iget-object v2, v2, Lg0b;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/SecurityQuestion;->d()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityQuestion;->e()Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v2, 0x0

    .line 48
    :goto_1
    const/4 v3, 0x4

    .line 49
    const/4 v4, 0x2

    .line 50
    const/4 v5, 0x1

    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-ne v6, v5, :cond_6

    .line 59
    .line 60
    if-ge v1, v3, :cond_5

    .line 61
    .line 62
    :cond_4
    :goto_2
    const/4 v9, 0x1

    .line 63
    goto :goto_4

    .line 64
    :cond_5
    const/4 v9, 0x2

    .line 65
    goto :goto_4

    .line 66
    :cond_6
    :goto_3
    if-nez v2, :cond_7

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-ne v2, v4, :cond_4

    .line 74
    .line 75
    if-ge v1, v3, :cond_8

    .line 76
    .line 77
    move v9, v1

    .line 78
    goto :goto_4

    .line 79
    :cond_8
    const/4 v1, 0x3

    .line 80
    const/4 v9, 0x3

    .line 81
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_a

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/SecurityQuestion;->e()Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-nez v1, :cond_9

    .line 92
    .line 93
    goto :goto_6

    .line 94
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-ne v1, v5, :cond_a

    .line 99
    .line 100
    invoke-static {v4}, Lkmf;->g(I)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    :goto_5
    move v7, v1

    .line 105
    goto :goto_7

    .line 106
    :cond_a
    :goto_6
    invoke-static {v3}, Lkmf;->g(I)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    goto :goto_5

    .line 111
    :goto_7
    new-instance v1, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 112
    .line 113
    invoke-static {v4}, Lkmf;->g(I)I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    const/16 v14, 0x78

    .line 118
    .line 119
    const/4 v15, 0x0

    .line 120
    const/4 v10, 0x0

    .line 121
    const/4 v11, 0x0

    .line 122
    const/4 v12, 0x0

    .line 123
    const/4 v13, 0x0

    .line 124
    move-object v6, v1

    .line 125
    invoke-direct/range {v6 .. v15}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    .line 127
    .line 128
    iput-object v1, v0, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->s:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 129
    .line 130
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Lg0b;

    .line 135
    .line 136
    iget-object v2, v2, Lg0b;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 137
    .line 138
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public static final e0(Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final f0(Lcom/opay/team/newhome/reward/SecurityButton;Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;Landroid/view/View;)V
    .locals 13

    .line 1
    const/4 p2, 0x0

    .line 2
    sget-object v0, Lx7b;->a:Lx7b;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/SecurityButton;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v2, v1

    .line 13
    :goto_0
    const-string v3, "cell_name"

    .line 14
    .line 15
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x1

    .line 20
    new-array v3, v3, [Lkotlin/Pair;

    .line 21
    .line 22
    aput-object v2, v3, p2

    .line 23
    .line 24
    const-string v2, "Home_page_answer_results_button_click"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 27
    .line 28
    .line 29
    sget-object v4, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 30
    .line 31
    invoke-virtual {p1}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lg0b;

    .line 36
    .line 37
    iget-object v0, v0, Lg0b;->c:Lcom/google/android/material/button/MaterialButton;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const-string v0, "getContext(...)"

    .line 44
    .line 45
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/SecurityButton;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :cond_1
    move-object v6, v1

    .line 55
    new-array v10, p2, [Lkotlin/Pair;

    .line 56
    .line 57
    const/16 v11, 0x1c

    .line 58
    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v9, 0x0

    .line 63
    invoke-static/range {v4 .. v12}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public static final g0(Lcom/opay/team/newhome/reward/SecurityButton;Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;Landroid/view/View;)V
    .locals 13

    .line 1
    const/4 p2, 0x0

    .line 2
    sget-object v0, Lx7b;->a:Lx7b;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/SecurityButton;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v2, v1

    .line 13
    :goto_0
    const-string v3, "cell_name"

    .line 14
    .line 15
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x1

    .line 20
    new-array v3, v3, [Lkotlin/Pair;

    .line 21
    .line 22
    aput-object v2, v3, p2

    .line 23
    .line 24
    const-string v2, "Home_page_answer_results_button_click"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 27
    .line 28
    .line 29
    sget-object v4, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 30
    .line 31
    invoke-virtual {p1}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lg0b;

    .line 36
    .line 37
    iget-object v0, v0, Lg0b;->c:Lcom/google/android/material/button/MaterialButton;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const-string v0, "getContext(...)"

    .line 44
    .line 45
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/SecurityButton;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :cond_1
    move-object v6, v1

    .line 55
    new-array v10, p2, [Lkotlin/Pair;

    .line 56
    .line 57
    const/16 v11, 0x1c

    .line 58
    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v9, 0x0

    .line 63
    invoke-static/range {v4 .. v12}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 67
    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final d0(Lcom/opay/team/newhome/reward/SecurityFeel;Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityQuestion;->d()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/opay/team/newhome/reward/SecurityOptionContent;

    .line 30
    .line 31
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->s(Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityQuestion;->c()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move-object v2, v3

    .line 58
    :goto_1
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lg0b;

    .line 67
    .line 68
    iget-object v4, v4, Lg0b;->l:Landroid/widget/TextView;

    .line 69
    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    sget v5, Lteam/opay/pay/R$string;->osdk_answer_right:I

    .line 73
    .line 74
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    sget v5, Lteam/opay/pay/R$string;->osdk_answer_wrong:I

    .line 80
    .line 81
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Lg0b;

    .line 93
    .line 94
    iget-object v4, v4, Lg0b;->e:Landroid/widget/ImageView;

    .line 95
    .line 96
    if-eqz p2, :cond_3

    .line 97
    .line 98
    sget v5, Lteam/opay/pay/R$mipmap;->osdk_home_security_answer_yes:I

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    sget v5, Lteam/opay/pay/R$mipmap;->osdk_home_security_answer_no:I

    .line 102
    .line 103
    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    .line 105
    .line 106
    sget-object v4, Lx7b;->a:Lx7b;

    .line 107
    .line 108
    if-eqz p2, :cond_4

    .line 109
    .line 110
    const-string v5, "correct"

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_4
    const-string v5, "mistake"

    .line 114
    .line 115
    :goto_4
    const-string v6, "Safe_Answer_results"

    .line 116
    .line 117
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    if-eqz v6, :cond_5

    .line 126
    .line 127
    invoke-virtual {v6}, Lcom/opay/team/newhome/reward/SecurityQuestion;->b()Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    goto :goto_5

    .line 132
    :cond_5
    move-object v6, v3

    .line 133
    :goto_5
    const-string v7, "Safe_answer_question_ID"

    .line 134
    .line 135
    invoke-static {v7, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    const/4 v7, 0x2

    .line 140
    new-array v7, v7, [Lkotlin/Pair;

    .line 141
    .line 142
    aput-object v5, v7, v1

    .line 143
    .line 144
    aput-object v6, v7, v0

    .line 145
    .line 146
    const-string v5, "Home_page_answer_results_page_show"

    .line 147
    .line 148
    invoke-virtual {v4, v5, v7}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Lg0b;

    .line 156
    .line 157
    iget-object v4, v4, Lg0b;->d:Landroid/widget/ImageView;

    .line 158
    .line 159
    new-instance v5, Lu17;

    .line 160
    .line 161
    invoke-direct {v5, p0}, Lu17;-><init>(Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    check-cast v4, Lg0b;

    .line 172
    .line 173
    iget-object v4, v4, Lg0b;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    if-eqz v5, :cond_6

    .line 180
    .line 181
    invoke-virtual {v5}, Lcom/opay/team/newhome/reward/SecurityQuestion;->f()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    goto :goto_6

    .line 186
    :cond_6
    move-object v5, v3

    .line 187
    :goto_6
    if-nez v5, :cond_7

    .line 188
    .line 189
    const-string v5, ""

    .line 190
    .line 191
    :cond_7
    invoke-static {v5}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    check-cast v4, Lg0b;

    .line 203
    .line 204
    iget-object v4, v4, Lg0b;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 205
    .line 206
    const-string v5, "securityAnswerTitle"

    .line 207
    .line 208
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const/16 v6, 0x8

    .line 212
    .line 213
    if-nez p2, :cond_8

    .line 214
    .line 215
    const/4 v7, 0x0

    .line 216
    goto :goto_7

    .line 217
    :cond_8
    const/16 v7, 0x8

    .line 218
    .line 219
    :goto_7
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    if-nez p2, :cond_9

    .line 223
    .line 224
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    check-cast p2, Lg0b;

    .line 229
    .line 230
    iget-object p2, p2, Lg0b;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 231
    .line 232
    sget v4, Lteam/opay/pay/R$string;->osdk_question_correct_answer:I

    .line 233
    .line 234
    new-array v7, v0, [Ljava/lang/Object;

    .line 235
    .line 236
    aput-object v2, v7, v1

    .line 237
    .line 238
    invoke-virtual {p0, v4, v7}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    :cond_9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    check-cast p2, Lg0b;

    .line 250
    .line 251
    iget-object p2, p2, Lg0b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 252
    .line 253
    const-string v2, "securityAnswer"

    .line 254
    .line 255
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    if-eqz v4, :cond_a

    .line 263
    .line 264
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/SecurityQuestion;->a()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    goto :goto_8

    .line 269
    :cond_a
    move-object v4, v3

    .line 270
    :goto_8
    if-eqz v4, :cond_c

    .line 271
    .line 272
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    if-nez v4, :cond_b

    .line 277
    .line 278
    goto :goto_9

    .line 279
    :cond_b
    const/4 v4, 0x0

    .line 280
    goto :goto_a

    .line 281
    :cond_c
    :goto_9
    const/4 v4, 0x1

    .line 282
    :goto_a
    if-nez v4, :cond_d

    .line 283
    .line 284
    const/4 v4, 0x0

    .line 285
    goto :goto_b

    .line 286
    :cond_d
    const/16 v4, 0x8

    .line 287
    .line 288
    :goto_b
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    check-cast p2, Lg0b;

    .line 296
    .line 297
    iget-object p2, p2, Lg0b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 298
    .line 299
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    if-eqz v4, :cond_e

    .line 304
    .line 305
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/SecurityQuestion;->a()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    goto :goto_c

    .line 310
    :cond_e
    move-object v4, v3

    .line 311
    :goto_c
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    check-cast p2, Lg0b;

    .line 319
    .line 320
    iget-object p2, p2, Lg0b;->n:Landroid/view/View;

    .line 321
    .line 322
    const-string v4, "vDotLine"

    .line 323
    .line 324
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    check-cast v4, Lg0b;

    .line 332
    .line 333
    iget-object v4, v4, Lg0b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 334
    .line 335
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    if-nez v2, :cond_f

    .line 343
    .line 344
    goto :goto_d

    .line 345
    :cond_f
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    check-cast v2, Lg0b;

    .line 350
    .line 351
    iget-object v2, v2, Lg0b;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 352
    .line 353
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    if-nez v2, :cond_10

    .line 361
    .line 362
    :goto_d
    const/4 v2, 0x1

    .line 363
    goto :goto_e

    .line 364
    :cond_10
    const/4 v2, 0x0

    .line 365
    :goto_e
    if-eqz v2, :cond_11

    .line 366
    .line 367
    const/4 v2, 0x0

    .line 368
    goto :goto_f

    .line 369
    :cond_11
    const/16 v2, 0x8

    .line 370
    .line 371
    :goto_f
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 372
    .line 373
    .line 374
    invoke-direct {p0}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->W()Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;

    .line 375
    .line 376
    .line 377
    move-result-object p2

    .line 378
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    if-eqz v2, :cond_12

    .line 383
    .line 384
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityQuestion;->d()Ljava/util/List;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    goto :goto_10

    .line 389
    :cond_12
    move-object v2, v3

    .line 390
    :goto_10
    if-nez v2, :cond_13

    .line 391
    .line 392
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    :cond_13
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    if-eqz v4, :cond_14

    .line 401
    .line 402
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/SecurityQuestion;->b()Ljava/lang/Long;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    goto :goto_11

    .line 407
    :cond_14
    move-object v4, v3

    .line 408
    :goto_11
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    if-eqz v5, :cond_15

    .line 413
    .line 414
    invoke-virtual {v5}, Lcom/opay/team/newhome/reward/SecurityQuestion;->c()Ljava/util/List;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    if-eqz v5, :cond_15

    .line 419
    .line 420
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v5

    .line 424
    check-cast v5, Ljava/lang/String;

    .line 425
    .line 426
    goto :goto_12

    .line 427
    :cond_15
    move-object v5, v3

    .line 428
    :goto_12
    invoke-virtual {p2, v2, v4, v5}, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->m(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->a()Ljava/util/List;

    .line 432
    .line 433
    .line 434
    move-result-object p2

    .line 435
    if-eqz p2, :cond_16

    .line 436
    .line 437
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 438
    .line 439
    .line 440
    move-result p2

    .line 441
    goto :goto_13

    .line 442
    :cond_16
    const/4 p2, 0x0

    .line 443
    :goto_13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    check-cast v2, Lg0b;

    .line 448
    .line 449
    iget-object v2, v2, Lg0b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 450
    .line 451
    const-string v4, "btnLeft"

    .line 452
    .line 453
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    if-le p2, v0, :cond_17

    .line 457
    .line 458
    const/4 v4, 0x1

    .line 459
    goto :goto_14

    .line 460
    :cond_17
    const/4 v4, 0x0

    .line 461
    :goto_14
    if-eqz v4, :cond_18

    .line 462
    .line 463
    const/4 v4, 0x0

    .line 464
    goto :goto_15

    .line 465
    :cond_18
    const/16 v4, 0x8

    .line 466
    .line 467
    :goto_15
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    check-cast v2, Lg0b;

    .line 475
    .line 476
    iget-object v2, v2, Lg0b;->c:Lcom/google/android/material/button/MaterialButton;

    .line 477
    .line 478
    const-string v4, "btnRight"

    .line 479
    .line 480
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    if-lez p2, :cond_19

    .line 484
    .line 485
    const/4 v4, 0x1

    .line 486
    goto :goto_16

    .line 487
    :cond_19
    const/4 v4, 0x0

    .line 488
    :goto_16
    if-eqz v4, :cond_1a

    .line 489
    .line 490
    const/4 v6, 0x0

    .line 491
    :cond_1a
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 492
    .line 493
    .line 494
    if-lez p2, :cond_1d

    .line 495
    .line 496
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->a()Ljava/util/List;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    if-eqz v2, :cond_1b

    .line 501
    .line 502
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    check-cast v1, Lcom/opay/team/newhome/reward/SecurityButton;

    .line 507
    .line 508
    goto :goto_17

    .line 509
    :cond_1b
    move-object v1, v3

    .line 510
    :goto_17
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    check-cast v2, Lg0b;

    .line 515
    .line 516
    iget-object v2, v2, Lg0b;->c:Lcom/google/android/material/button/MaterialButton;

    .line 517
    .line 518
    if-eqz v1, :cond_1c

    .line 519
    .line 520
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/SecurityButton;->a()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    goto :goto_18

    .line 525
    :cond_1c
    move-object v4, v3

    .line 526
    :goto_18
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    check-cast v2, Lg0b;

    .line 534
    .line 535
    iget-object v2, v2, Lg0b;->c:Lcom/google/android/material/button/MaterialButton;

    .line 536
    .line 537
    new-instance v4, Lv17;

    .line 538
    .line 539
    invoke-direct {v4, v1, p0}, Lv17;-><init>(Lcom/opay/team/newhome/reward/SecurityButton;Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    .line 544
    .line 545
    :cond_1d
    if-le p2, v0, :cond_20

    .line 546
    .line 547
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->a()Ljava/util/List;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    if-eqz p1, :cond_1e

    .line 552
    .line 553
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    check-cast p1, Lcom/opay/team/newhome/reward/SecurityButton;

    .line 558
    .line 559
    goto :goto_19

    .line 560
    :cond_1e
    move-object p1, v3

    .line 561
    :goto_19
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 562
    .line 563
    .line 564
    move-result-object p2

    .line 565
    check-cast p2, Lg0b;

    .line 566
    .line 567
    iget-object p2, p2, Lg0b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 568
    .line 569
    if-eqz p1, :cond_1f

    .line 570
    .line 571
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityButton;->a()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    :cond_1f
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 579
    .line 580
    .line 581
    move-result-object p2

    .line 582
    check-cast p2, Lg0b;

    .line 583
    .line 584
    iget-object p2, p2, Lg0b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 585
    .line 586
    new-instance v0, Lw17;

    .line 587
    .line 588
    invoke-direct {v0, p1, p0}, Lw17;-><init>(Lcom/opay/team/newhome/reward/SecurityButton;Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    .line 593
    .line 594
    :cond_20
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    new-instance p1, Lr17;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lr17;-><init>(Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;)V

    .line 18
    .line 19
    .line 20
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 21
    .line 22
    new-instance v0, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$onViewCreated$$inlined$viewModels$default$1;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$onViewCreated$$inlined$viewModels$default$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p2, v0}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-class p2, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 32
    .line 33
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    new-instance v0, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$onViewCreated$$inlined$viewModels$default$2;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$onViewCreated$$inlined$viewModels$default$2;-><init>(Lid8;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$onViewCreated$$inlined$viewModels$default$3;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-direct {v1, v2, p1}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$onViewCreated$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$onViewCreated$$inlined$viewModels$default$4;

    .line 49
    .line 50
    invoke-direct {v2, p0, p1}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$onViewCreated$$inlined$viewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0, p2, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->Z(Lid8;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->C0()Lcom/opay/team/newhome/reward/SecurityFeel;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-nez p2, :cond_0

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Lg0b;

    .line 76
    .line 77
    iget-object p2, p2, Lg0b;->f:Landroidx/core/widget/NestedScrollView;

    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    instance-of p2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 84
    .line 85
    if-eqz p2, :cond_1

    .line 86
    .line 87
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Lg0b;

    .line 92
    .line 93
    iget-object p2, p2, Lg0b;->f:Landroidx/core/widget/NestedScrollView;

    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const-string v0, "getContext(...)"

    .line 100
    .line 101
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p2}, Ljmf;->q(Landroid/content/Context;)I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    int-to-float p2, p2

    .line 109
    const/high16 v0, 0x41200000    # 10.0f

    .line 110
    .line 111
    div-float/2addr p2, v0

    .line 112
    const/4 v0, 0x7

    .line 113
    int-to-float v0, v0

    .line 114
    mul-float p2, p2, v0

    .line 115
    .line 116
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lg0b;

    .line 121
    .line 122
    iget-object v0, v0, Lg0b;->f:Landroidx/core/widget/NestedScrollView;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 129
    .line 130
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 134
    .line 135
    float-to-int p2, p2

    .line 136
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:I

    .line 137
    .line 138
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    check-cast p2, Lg0b;

    .line 143
    .line 144
    iget-object p2, p2, Lg0b;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 145
    .line 146
    invoke-direct {p0}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->V()Landroidx/recyclerview/widget/GridLayoutManager;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {p0}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->W()Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 158
    .line 159
    .line 160
    const/4 v0, 0x1

    .line 161
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 162
    .line 163
    .line 164
    invoke-static {p1}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->Z(Lid8;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->C0()Lcom/opay/team/newhome/reward/SecurityFeel;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    if-eqz p2, :cond_3

    .line 173
    .line 174
    invoke-direct {p0, p2}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->b0(Lcom/opay/team/newhome/reward/SecurityFeel;)V

    .line 175
    .line 176
    .line 177
    invoke-direct {p0, p2}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->c0(Lcom/opay/team/newhome/reward/SecurityFeel;)V

    .line 178
    .line 179
    .line 180
    invoke-static {p1}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->Z(Lid8;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->G0()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p0, p2, p1}, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->d0(Lcom/opay/team/newhome/reward/SecurityFeel;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 193
    .line 194
    .line 195
    :cond_3
    :goto_0
    return-void
.end method
