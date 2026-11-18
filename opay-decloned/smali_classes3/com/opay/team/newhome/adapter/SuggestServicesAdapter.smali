.class public final Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;
.super Lcom/opay/team/newhome/base/BindingAdapter;
.source "SuggestServicesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/adapter/SuggestServicesAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/opay/team/newhome/base/BindingAdapter<",
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
        "Lnja;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\"B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000c\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ)\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0017\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R0\u0010 \u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00120\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;",
        "Lcom/opay/team/newhome/base/BindingAdapter;",
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
        "Lnja;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "parent",
        "t",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lnja;",
        "binding",
        "data",
        "",
        "position",
        "",
        "q",
        "(Lnja;Lcom/opay/team/newhome/bean/NewBusinessData;I)V",
        "b",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Lkotlin/Function1;",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "getItemClicked",
        "()Lkotlin/jvm/functions/Function1;",
        "setItemClicked",
        "(Lkotlin/jvm/functions/Function1;)V",
        "itemClicked",
        "d",
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
.field public static final d:Lcom/opay/team/newhome/adapter/SuggestServicesAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/lang/String;


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
    new-instance v0, Lcom/opay/team/newhome/adapter/SuggestServicesAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/adapter/SuggestServicesAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;->d:Lcom/opay/team/newhome/adapter/SuggestServicesAdapter$Companion;

    .line 8
    .line 9
    const-class v0, Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;->e:Ljava/lang/String;

    .line 16
    .line 17
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
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;->b:Landroid/content/Context;

    .line 10
    .line 11
    new-instance p1, Ll8e;

    .line 12
    .line 13
    invoke-direct {p1}, Ll8e;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic o(Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;->s(Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;Lcom/opay/team/newhome/bean/NewBusinessData;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;->r(Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;Lcom/opay/team/newhome/bean/NewBusinessData;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final r(Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;Lcom/opay/team/newhome/bean/NewBusinessData;I)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 3
    .line 4
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    sget-object p0, Lcom/opay/team/OPayAnalytics;->b:Lcom/opay/team/OPayAnalytics$Companion;

    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/home/Service;->COMMON:Lteam/opay/pay/home/Service;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/opay/team/OPayAnalytics$Companion;->b(Lteam/opay/pay/home/Service;)Lcom/opay/team/OPayAnalytics;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    const-string v1, ""

    .line 26
    .line 27
    invoke-static {p1, v1}, Lgmf;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v1, "button_name"

    .line 32
    .line 33
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    add-int/2addr p2, v0

    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const-string v1, "position_number"

    .line 43
    .line 44
    invoke-static {v1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const/4 v1, 0x2

    .line 49
    new-array v1, v1, [Lkotlin/Pair;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    aput-object p1, v1, v2

    .line 53
    .line 54
    aput-object p2, v1, v0

    .line 55
    .line 56
    const-string p1, "PayRecommendClick"

    .line 57
    .line 58
    invoke-virtual {p0, p1, v1}, Lcom/opay/team/OPayAnalytics;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p0
.end method

.method private static final s(Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bridge synthetic k(Lxyf;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lnja;

    .line 2
    .line 3
    check-cast p2, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;->q(Lnja;Lcom/opay/team/newhome/bean/NewBusinessData;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic m(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lxyf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;->t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lnja;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public q(Lnja;Lcom/opay/team/newhome/bean/NewBusinessData;I)V
    .locals 6
    .param p1    # Lnja;
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
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;->e:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "TAG"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "bind data "

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;->b:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v2}, Lgmf;->d(Landroid/content/Context;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    mul-int/lit8 v2, v2, 0x2

    .line 33
    .line 34
    div-int/lit8 v2, v2, 0x5

    .line 35
    .line 36
    invoke-virtual {p1}, Lnja;->a()Landroidx/appcompat/widget/AppCompatImageView;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    mul-int/lit16 v5, v2, 0x9c

    .line 43
    .line 44
    div-int/lit16 v5, v5, 0x8c

    .line 45
    .line 46
    invoke-direct {v4, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v1, "onBindViewHolder itemWidth = "

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, " position = "

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lnja;->a()Landroidx/appcompat/widget/AppCompatImageView;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "getRoot(...)"

    .line 81
    .line 82
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Lk8e;

    .line 86
    .line 87
    invoke-direct {v1, p0, p2, p3}, Lk8e;-><init>(Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;Lcom/opay/team/newhome/bean/NewBusinessData;I)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 91
    .line 92
    .line 93
    iget-object p3, p0, Lcom/opay/team/newhome/adapter/SuggestServicesAdapter;->b:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {p3}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    if-eqz p2, :cond_0

    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getImgUrl()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    if-nez p2, :cond_1

    .line 106
    .line 107
    :cond_0
    const-string p2, ""

    .line 108
    .line 109
    :cond_1
    invoke-virtual {p3, p2}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    sget p3, Lteam/opay/pay/R$mipmap;->omain_home_defualt_icon:I

    .line 114
    .line 115
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    check-cast p2, Ljpc;

    .line 120
    .line 121
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->n(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    check-cast p2, Ljpc;

    .line 126
    .line 127
    iget-object p1, p1, Lnja;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 128
    .line 129
    invoke-virtual {p2, p1}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lnja;
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
    invoke-static {p1, p2, v0}, Lnja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lnja;

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
