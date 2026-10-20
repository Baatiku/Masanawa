.class public final Lcom/opay/team/newhome/adapter/HomeHeadAdapter;
.super Lcom/opay/team/newhome/base/BindingAdapter;
.source "HomeHeadAdapter.kt"

# interfaces
.implements Lyz6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/adapter/HomeHeadAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/opay/team/newhome/base/BindingAdapter<",
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
        "Lcja;",
        ">;",
        "Lyz6;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001%B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ)\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u00032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0017\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0016\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR0\u0010$\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00130\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006&"
    }
    d2 = {
        "Lcom/opay/team/newhome/adapter/HomeHeadAdapter;",
        "Lcom/opay/team/newhome/base/BindingAdapter;",
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
        "Lcja;",
        "Lyz6;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "parent",
        "t",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcja;",
        "binding",
        "data",
        "",
        "position",
        "",
        "q",
        "(Lcja;Lcom/opay/team/newhome/bean/NewBusinessData;I)V",
        "p",
        "d",
        "(I)Lcom/opay/team/newhome/bean/NewBusinessData;",
        "b",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Lkotlin/Function1;",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "getItemClicked",
        "()Lkotlin/jvm/functions/Function1;",
        "u",
        "(Lkotlin/jvm/functions/Function1;)V",
        "itemClicked",
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
.field public static final d:Lcom/opay/team/newhome/adapter/HomeHeadAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/adapter/HomeHeadAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/adapter/HomeHeadAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/adapter/HomeHeadAdapter;->d:Lcom/opay/team/newhome/adapter/HomeHeadAdapter$Companion;

    .line 8
    .line 9
    const-string v0, "HomeHeadAdapter"

    .line 10
    .line 11
    sput-object v0, Lcom/opay/team/newhome/adapter/HomeHeadAdapter;->e:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
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
    invoke-direct {p0}, Lcom/opay/team/newhome/base/BindingAdapter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/HomeHeadAdapter;->b:Landroid/content/Context;

    .line 10
    .line 11
    new-instance p1, La07;

    .line 12
    .line 13
    invoke-direct {p1}, La07;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/HomeHeadAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic o(Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/adapter/HomeHeadAdapter;->s(Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lcom/opay/team/newhome/adapter/HomeHeadAdapter;Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/adapter/HomeHeadAdapter;->r(Lcom/opay/team/newhome/adapter/HomeHeadAdapter;Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final r(Lcom/opay/team/newhome/adapter/HomeHeadAdapter;Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/adapter/HomeHeadAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lxz6;->a:Lxz6;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getSuperscriptAd()Lteam/opay/odialog/net/AdDataItem;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0, p1}, Lxz6;->d(Lteam/opay/odialog/net/AdDataItem;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method public static final s(Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public d(I)Lcom/opay/team/newhome/bean/NewBusinessData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/base/BindingAdapter;->getDataList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return-object p1
.end method

.method public bridge synthetic k(Lxyf;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcja;

    .line 2
    .line 3
    check-cast p2, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/adapter/HomeHeadAdapter;->q(Lcja;Lcom/opay/team/newhome/bean/NewBusinessData;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic m(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lxyf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/adapter/HomeHeadAdapter;->t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcja;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public q(Lcja;Lcom/opay/team/newhome/bean/NewBusinessData;I)V
    .locals 11
    .param p1    # Lcja;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/bean/NewBusinessData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 1
    const-string p3, "binding"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "bind data "

    .line 12
    .line 13
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcja;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    const-string v0, "getRoot(...)"

    .line 24
    .line 25
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lb07;

    .line 29
    .line 30
    invoke-direct {v0, p0, p2}, Lb07;-><init>(Lcom/opay/team/newhome/adapter/HomeHeadAdapter;Lcom/opay/team/newhome/bean/NewBusinessData;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p3, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 34
    .line 35
    .line 36
    iget-object p3, p1, Lcja;->c:Landroid/widget/TextView;

    .line 37
    .line 38
    const-string v0, ""

    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object v1, v0

    .line 50
    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    sget-object p3, Lc03;->a:Lc03;

    .line 54
    .line 55
    invoke-virtual {p3}, Lc03;->c()Z

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-eqz p3, :cond_1

    .line 60
    .line 61
    iget-object p3, p1, Lcja;->b:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 62
    .line 63
    sget v1, Lteam/opay/pay/R$color;->mint:I

    .line 64
    .line 65
    invoke-virtual {p3, v1}, Lcom/opay/team/newhome/home/ImageLottieView;->setTintColor(I)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v2, p1, Lcja;->b:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 69
    .line 70
    const/4 p3, 0x0

    .line 71
    if-eqz p2, :cond_2

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getDiverseImgUrl()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move-object v1, p3

    .line 79
    :goto_1
    if-nez v1, :cond_3

    .line 80
    .line 81
    move-object v3, v0

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move-object v3, v1

    .line 84
    :goto_2
    sget v4, Lteam/opay/pay/R$mipmap;->osdk_logo_place_holder:I

    .line 85
    .line 86
    const/16 v9, 0x3c

    .line 87
    .line 88
    const/4 v10, 0x0

    .line 89
    const/4 v5, 0x0

    .line 90
    const/4 v6, 0x0

    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v8, 0x0

    .line 93
    invoke-static/range {v2 .. v10}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    if-eqz p2, :cond_4

    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->showSuper()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    const/4 v1, 0x0

    .line 104
    :goto_3
    iget-object v2, p1, Lcja;->e:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 105
    .line 106
    const-string v3, "hotImg"

    .line 107
    .line 108
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 112
    .line 113
    .line 114
    if-eqz v1, :cond_8

    .line 115
    .line 116
    iget-object p1, p1, Lcja;->e:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 117
    .line 118
    if-eqz p2, :cond_5

    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getDiverseSuperscriptImgUrl()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    goto :goto_4

    .line 125
    :cond_5
    move-object v1, p3

    .line 126
    :goto_4
    if-nez v1, :cond_6

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_6
    move-object v0, v1

    .line 130
    :goto_5
    if-eqz p2, :cond_7

    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getSuperscriptAd()Lteam/opay/odialog/net/AdDataItem;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    :cond_7
    invoke-virtual {p1, v0, p3}, Lcom/opay/team/newhome/home/ImageLottieView;->t(Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;)V

    .line 137
    .line 138
    .line 139
    :cond_8
    return-void
.end method

.method public t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcja;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "parent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, p2, v0}, Lcja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcja;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string p2, "inflate(...)"

    .line 17
    .line 18
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method public final u(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/HomeHeadAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method
