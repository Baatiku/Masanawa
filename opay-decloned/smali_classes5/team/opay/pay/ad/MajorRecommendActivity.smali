.class public final Lteam/opay/pay/ad/MajorRecommendActivity;
.super Lteam/opay/pay/ad/Hilt_MajorRecommendActivity;
.source "MajorRecommendActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/ad/MajorRecommendActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0015\u001a\u00020\u00108VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u000e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lteam/opay/pay/ad/MajorRecommendActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "",
        "initView",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "onBackPressed",
        "",
        "position",
        "I",
        "(I)V",
        "Lnwa;",
        "e",
        "Lid8;",
        "E",
        "()Lnwa;",
        "viewBinding",
        "",
        "Lteam/opay/odialog/net/AdDataItem;",
        "f",
        "Ljava/util/List;",
        "data",
        "g",
        "currentPosition",
        "h",
        "Companion",
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


# static fields
.field public static final h:Lteam/opay/pay/ad/MajorRecommendActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/ad/MajorRecommendActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/ad/MajorRecommendActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/ad/MajorRecommendActivity;->h:Lteam/opay/pay/ad/MajorRecommendActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->osdk_activity_major_recommend:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/ad/Hilt_MajorRecommendActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lhs8;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lhs8;-><init>(Lteam/opay/pay/ad/MajorRecommendActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/ad/MajorRecommendActivity;->e:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/ad/MajorRecommendActivity;Ljava/util/List;Lteam/opay/pay/ad/MajorRecommendFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/ad/MajorRecommendActivity;->H(Lteam/opay/pay/ad/MajorRecommendActivity;Ljava/util/List;Lteam/opay/pay/ad/MajorRecommendFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lteam/opay/pay/ad/MajorRecommendActivity;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/ad/MajorRecommendActivity;->F(Lteam/opay/pay/ad/MajorRecommendActivity;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/ad/MajorRecommendActivity;)Lnwa;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/ad/MajorRecommendActivity;->J(Lteam/opay/pay/ad/MajorRecommendActivity;)Lnwa;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/ad/MajorRecommendActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/ad/MajorRecommendActivity;->G(Lteam/opay/pay/ad/MajorRecommendActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final F(Lteam/opay/pay/ad/MajorRecommendActivity;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/ad/MajorRecommendActivity;->I(I)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final G(Lteam/opay/pay/ad/MajorRecommendActivity;Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p1, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v1, "recommend_page_cancel_click"

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final H(Lteam/opay/pay/ad/MajorRecommendActivity;Ljava/util/List;Lteam/opay/pay/ad/MajorRecommendFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    iget p3, p0, Lteam/opay/pay/ad/MajorRecommendActivity;->g:I

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-ne p3, p1, :cond_0

    .line 11
    .line 12
    sget-object p1, Lx7b;->a:Lx7b;

    .line 13
    .line 14
    const-string p2, "recommend_page_done_click"

    .line 15
    .line 16
    new-array p3, v0, [Lkotlin/Pair;

    .line 17
    .line 18
    invoke-virtual {p1, p2, p3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget p1, p0, Lteam/opay/pay/ad/MajorRecommendActivity;->g:I

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    iput p1, p0, Lteam/opay/pay/ad/MajorRecommendActivity;->g:I

    .line 30
    .line 31
    invoke-virtual {p2}, Lteam/opay/pay/ad/MajorRecommendFragment;->C()Lteam/opay/pay/ad/MajorAdLoopViewPager;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lteam/opay/pay/ad/MajorAdLoopViewPager;->setCanLooper(Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p2}, Lteam/opay/pay/ad/MajorRecommendFragment;->C()Lteam/opay/pay/ad/MajorAdLoopViewPager;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Lteam/opay/pay/widget/LoopViewPager;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget p0, p0, Lteam/opay/pay/ad/MajorRecommendActivity;->g:I

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 55
    .line 56
    .line 57
    :cond_2
    sget-object p0, Lx7b;->a:Lx7b;

    .line 58
    .line 59
    const-string p1, "recommend_page_continue_click"

    .line 60
    .line 61
    new-array p2, v0, [Lkotlin/Pair;

    .line 62
    .line 63
    invoke-virtual {p0, p1, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public static final J(Lteam/opay/pay/ad/MajorRecommendActivity;)Lnwa;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lnwa;->inflate(Landroid/view/LayoutInflater;)Lnwa;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private final initView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/MajorRecommendActivity;->f:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    sget-object v1, Lteam/opay/pay/ad/MajorRecommendFragment;->g:Lteam/opay/pay/ad/MajorRecommendFragment$Companion;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lteam/opay/pay/ad/MajorRecommendFragment$Companion;->a(Ljava/util/List;)Lteam/opay/pay/ad/MajorRecommendFragment;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lis8;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Lis8;-><init>(Lteam/opay/pay/ad/MajorRecommendActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lteam/opay/pay/ad/MajorRecommendFragment;->G(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget v3, Lteam/opay/pay/R$id;->container:I

    .line 28
    .line 29
    const-class v4, Lteam/opay/pay/ad/MajorRecommendFragment;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v2, v3, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->t(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "getWindow(...)"

    .line 47
    .line 48
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/high16 v3, 0x4000000

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 54
    .line 55
    .line 56
    const/high16 v3, -0x80000000

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 59
    .line 60
    .line 61
    sget-object v2, Lteam/opay/oconfig/a;->a:Lteam/opay/oconfig/a;

    .line 62
    .line 63
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 64
    .line 65
    const-string v4, "key_major_recommend_switch"

    .line 66
    .line 67
    invoke-virtual {v2, v4, v3}, Lteam/opay/oconfig/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_0

    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/pay/ad/MajorRecommendActivity;->E()Lnwa;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v2, v2, Lnwa;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 84
    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    invoke-static {v2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/ad/MajorRecommendActivity;->E()Lnwa;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object v2, v2, Lnwa;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 96
    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    invoke-static {v2}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/ad/MajorRecommendActivity;->E()Lnwa;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget-object v2, v2, Lnwa;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 107
    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    new-instance v3, Ljs8;

    .line 111
    .line 112
    invoke-direct {v3, p0}, Ljs8;-><init>(Lteam/opay/pay/ad/MajorRecommendActivity;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/ad/MajorRecommendActivity;->E()Lnwa;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget-object v2, v2, Lnwa;->b:Landroid/widget/Button;

    .line 123
    .line 124
    if-eqz v2, :cond_3

    .line 125
    .line 126
    new-instance v3, Lks8;

    .line 127
    .line 128
    invoke-direct {v3, p0, v0, v1}, Lks8;-><init>(Lteam/opay/pay/ad/MajorRecommendActivity;Ljava/util/List;Lteam/opay/pay/ad/MajorRecommendFragment;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/ad/MajorRecommendActivity;->E()Lnwa;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-object v0, v0, Lnwa;->c:Landroid/widget/FrameLayout;

    .line 139
    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    new-instance v2, Lteam/opay/pay/ad/MajorRecommendActivity$a;

    .line 149
    .line 150
    invoke-direct {v2, p0, v1}, Lteam/opay/pay/ad/MajorRecommendActivity$a;-><init>(Lteam/opay/pay/ad/MajorRecommendActivity;Lteam/opay/pay/ad/MajorRecommendFragment;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 154
    .line 155
    .line 156
    :cond_4
    return-void
.end method


# virtual methods
.method public E()Lnwa;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/MajorRecommendActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnwa;

    .line 8
    .line 9
    return-object v0
.end method

.method public final I(I)V
    .locals 1

    .line 1
    iput p1, p0, Lteam/opay/pay/ad/MajorRecommendActivity;->g:I

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/ad/MajorRecommendActivity;->f:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/ad/MajorRecommendActivity;->E()Lnwa;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lnwa;->b:Landroid/widget/Button;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    sget v0, Lteam/opay/pay/R$string;->osdk_ad_done:I

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/ad/MajorRecommendActivity;->E()Lnwa;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Lnwa;->b:Landroid/widget/Button;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    sget v0, Lteam/opay/pay/R$string;->osdk_ad_continue:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/ad/MajorRecommendActivity;->E()Lnwa;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/ad/Hilt_MajorRecommendActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "key_data"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<team.opay.odialog.net.AdDataItem>"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast p1, Ljava/util/List;

    .line 20
    .line 21
    iput-object p1, p0, Lteam/opay/pay/ad/MajorRecommendActivity;->f:Ljava/util/List;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/ad/MajorRecommendActivity;->initView()V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lx7b;->a:Lx7b;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Lkotlin/Pair;

    .line 39
    .line 40
    const-string v1, "recommend_page_show"

    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "major_ad_close_event"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-static {v0, v3, v4, v1, v2}, Lteam/opay/pay/util/FlowBus;->h(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lteam/opay/pay/ad/Hilt_MajorRecommendActivity;->onDestroy()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
