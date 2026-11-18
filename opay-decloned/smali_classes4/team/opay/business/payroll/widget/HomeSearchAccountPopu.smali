.class public final Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;
.super Landroid/widget/PopupWindow;
.source "HomeSearchAccountPopu.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$SearchAccountAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001&B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ&\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\r2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0086@\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R*\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR*\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0017\u001a\u0004\u0008\u001e\u0010\u0019\"\u0004\u0008\u001f\u0010\u001bR\u001f\u0010%\u001a\u00060!R\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008\"\u0010$\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;",
        "Landroid/widget/PopupWindow;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/view/View;",
        "anchor",
        "",
        "showAsDropDown",
        "(Landroid/view/View;)V",
        "dismiss",
        "()V",
        "",
        "key",
        "",
        "Lteam/opay/business/payroll/api/BeneficiaryInfo;",
        "dataAll",
        "",
        "d",
        "(Ljava/lang/String;Ljava/util/List;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/core/common/android/event/CallbackWrapper;",
        "a",
        "Lteam/opay/core/common/android/event/CallbackWrapper;",
        "getOnItemClick",
        "()Lteam/opay/core/common/android/event/CallbackWrapper;",
        "g",
        "(Lteam/opay/core/common/android/event/CallbackWrapper;)V",
        "onItemClick",
        "b",
        "getShowHidePop",
        "h",
        "showHidePop",
        "Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$SearchAccountAdapter;",
        "c",
        "Lid8;",
        "()Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$SearchAccountAdapter;",
        "searchAdapter",
        "SearchAccountAdapter",
        "business-payroll_release"
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
.field public a:Lteam/opay/core/common/android/event/CallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Lteam/opay/business/payroll/api/BeneficiaryInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lteam/opay/core/common/android/event/CallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lp17;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lp17;-><init>(Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;->c:Lid8;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget v1, Lteam/opay/business/payroll/R$layout;->payroll_layout_home_search_account:I

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, -0x1

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 36
    .line 37
    .line 38
    const/4 v0, -0x2

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 54
    .line 55
    .line 56
    const/16 v0, 0x10

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget v3, Lteam/opay/business/payroll/R$id;->recyclerView:I

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    invoke-virtual {p0}, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;->c()Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$SearchAccountAdapter;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    new-instance v3, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 84
    .line 85
    invoke-direct {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    .line 86
    .line 87
    .line 88
    const/high16 v4, 0x41000000    # 8.0f

    .line 89
    .line 90
    invoke-static {v4}, Let;->g(F)F

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    invoke-virtual {v3, v1, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v3, "build(...)"

    .line 103
    .line 104
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance v3, Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 108
    .line 109
    invoke-direct {v3}, Lteam/opay/core/common/android/ShapeConfig$Builder;-><init>()V

    .line 110
    .line 111
    .line 112
    sget v5, Lteam/opay/business/payroll/R$color;->payroll_color_E2E2E2_1B1B1B:I

    .line 113
    .line 114
    invoke-static {p1, v5}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-virtual {v3, p1}, Lteam/opay/core/common/android/ShapeConfig$Builder;->g(I)Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {v4}, Let;->g(F)F

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-virtual {p1, v3}, Lteam/opay/core/common/android/ShapeConfig$Builder;->h(F)Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lteam/opay/core/common/android/ShapeConfig$Builder;->a()Lteam/opay/core/common/android/ShapeConfig;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {v0, v1, p1}, Ls0g;->a(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;Lteam/opay/core/common/android/ShapeConfig;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public static synthetic a(Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;)Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$SearchAccountAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;->e(Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;)Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$SearchAccountAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;Lteam/opay/business/payroll/api/BeneficiaryInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;->f(Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;Lteam/opay/business/payroll/api/BeneficiaryInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final e(Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;)Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$SearchAccountAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$SearchAccountAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$SearchAccountAdapter;-><init>(Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lq17;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lq17;-><init>(Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$SearchAccountAdapter;->p(Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final f(Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;Lteam/opay/business/payroll/api/BeneficiaryInfo;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;->a:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/core/common/android/event/CallbackWrapper;->a(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;->b:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lteam/opay/core/common/android/event/CallbackWrapper;->a(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method


# virtual methods
.method public final c()Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$SearchAccountAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$SearchAccountAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/util/List;Ljr2;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/business/payroll/api/BeneficiaryInfo;",
            ">;",
            "Ljr2<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$search$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$search$1;

    .line 7
    .line 8
    iget v1, v0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$search$1;->label:I

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
    iput v1, v0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$search$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$search$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$search$1;-><init>(Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$search$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$search$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-ne v2, v5, :cond_1

    .line 39
    .line 40
    iget-object p1, v0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$search$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Ljava/lang/String;

    .line 43
    .line 44
    iget-object p2, v0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$search$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p2, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;

    .line 47
    .line 48
    invoke-static {p3}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    invoke-static {p3}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    if-eqz p3, :cond_3

    .line 68
    .line 69
    invoke-static {v4}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :cond_3
    new-instance p3, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$search$searchList$1;

    .line 75
    .line 76
    invoke-direct {p3, p2, p1, v3}, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$search$searchList$1;-><init>(Ljava/util/List;Ljava/lang/String;Ljr2;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p3}, Lteam/opay/kotlin/coroutine/CoroutineScopeKt;->a(Lkotlin/jvm/functions/Function2;)Lb63;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iput-object p0, v0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$search$1;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    iput-object p1, v0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$search$1;->L$1:Ljava/lang/Object;

    .line 86
    .line 87
    iput v5, v0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$search$1;->label:I

    .line 88
    .line 89
    invoke-interface {p2, v0}, Lb63;->V0(Ljr2;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    if-ne p3, v1, :cond_4

    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_4
    move-object p2, p0

    .line 97
    :goto_1
    check-cast p3, Ljava/util/List;

    .line 98
    .line 99
    sget-object v0, Ljl8;->c:Ljl8;

    .line 100
    .line 101
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v6, "search key="

    .line 111
    .line 112
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, " searchList="

    .line 119
    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const/4 v1, 0x2

    .line 131
    invoke-static {v0, p1, v3, v1, v3}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_6

    .line 139
    .line 140
    iget-object p1, p2, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;->b:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 141
    .line 142
    if-eqz p1, :cond_5

    .line 143
    .line 144
    invoke-static {v4}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p1, p2}, Lteam/opay/core/common/android/event/CallbackWrapper;->a(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_5
    invoke-static {v4}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    return-object p1

    .line 156
    :cond_6
    invoke-virtual {p2}, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;->c()Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$SearchAccountAdapter;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1, p3}, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu$SearchAccountAdapter;->o(Ljava/util/List;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p2, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;->b:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 164
    .line 165
    if-eqz p1, :cond_7

    .line 166
    .line 167
    invoke-static {v5}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p1, p2}, Lteam/opay/core/common/android/event/CallbackWrapper;->a(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :cond_7
    invoke-static {v5}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    return-object p1
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final g(Lteam/opay/core/common/android/event/CallbackWrapper;)V
    .locals 0
    .param p1    # Lteam/opay/core/common/android/event/CallbackWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Lteam/opay/business/payroll/api/BeneficiaryInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;->a:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 2
    .line 3
    return-void
.end method

.method public final h(Lteam/opay/core/common/android/event/CallbackWrapper;)V
    .locals 0
    .param p1    # Lteam/opay/core/common/android/event/CallbackWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;->b:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 2
    .line 3
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
