.class public final Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;
.super Lcom/opay/team/newhome/base/BindingAdapter;
.source "BillPaymentMoreAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/opay/team/newhome/base/BindingAdapter<",
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
        "Lzia;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \"2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001#B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000c\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ)\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0017\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R6\u0010!\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00120\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;",
        "Lcom/opay/team/newhome/base/BindingAdapter;",
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
        "Lzia;",
        "Landroid/app/Activity;",
        "activity",
        "<init>",
        "(Landroid/app/Activity;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "parent",
        "t",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lzia;",
        "binding",
        "data",
        "",
        "position",
        "",
        "q",
        "(Lzia;Lcom/opay/team/newhome/bean/NewBusinessData;I)V",
        "b",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "Lkotlin/Function2;",
        "Lcom/opay/team/home/analytics/PageSubModule;",
        "c",
        "Lkotlin/jvm/functions/Function2;",
        "getItemClicked",
        "()Lkotlin/jvm/functions/Function2;",
        "setItemClicked",
        "(Lkotlin/jvm/functions/Function2;)V",
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
.field public static final d:Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/lang/String;


# instance fields
.field public final b:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            "-",
            "Lcom/opay/team/home/analytics/PageSubModule;",
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
    new-instance v0, Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;->d:Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter$Companion;

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
    sput-object v0, Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;->e:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

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
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;->b:Landroid/app/Activity;

    .line 10
    .line 11
    new-instance p1, Lw61;

    .line 12
    .line 13
    invoke-direct {p1}, Lw61;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;->c:Lkotlin/jvm/functions/Function2;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic o(Lcom/opay/team/newhome/bean/NewBusinessData;Lcom/opay/team/home/analytics/PageSubModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;->s(Lcom/opay/team/newhome/bean/NewBusinessData;Lcom/opay/team/home/analytics/PageSubModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;->r(Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final r(Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;->c:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    sget-object v0, Lcom/opay/team/home/analytics/PageSubModule;->PAY_CP_BUSINESS:Lcom/opay/team/home/analytics/PageSubModule;

    .line 4
    .line 5
    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final s(Lcom/opay/team/newhome/bean/NewBusinessData;Lcom/opay/team/home/analytics/PageSubModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public bridge synthetic k(Lxyf;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lzia;

    .line 2
    .line 3
    check-cast p2, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;->q(Lzia;Lcom/opay/team/newhome/bean/NewBusinessData;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic m(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lxyf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;->t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lzia;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public q(Lzia;Lcom/opay/team/newhome/bean/NewBusinessData;I)V
    .locals 6
    .param p1    # Lzia;
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
    sget-object v0, Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;->e:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;->b:Landroid/app/Activity;

    .line 27
    .line 28
    invoke-static {v2}, Lgmf;->d(Landroid/content/Context;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/16 v3, 0x42

    .line 33
    .line 34
    invoke-static {v3}, Ljmf;->d(I)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    sub-int/2addr v2, v3

    .line 39
    div-int/lit8 v2, v2, 0x3

    .line 40
    .line 41
    invoke-virtual {p1}, Lzia;->a()Landroid/widget/FrameLayout;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    mul-int/lit8 v5, v2, 0x58

    .line 48
    .line 49
    div-int/lit8 v5, v5, 0x62

    .line 50
    .line 51
    invoke-direct {v4, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v1, "onBindViewHolder itemWidth = "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, " position = "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lzia;->a()Landroid/widget/FrameLayout;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    const-string v0, "getRoot(...)"

    .line 86
    .line 87
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Lv61;

    .line 91
    .line 92
    invoke-direct {v0, p0, p2}, Lv61;-><init>(Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;Lcom/opay/team/newhome/bean/NewBusinessData;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p3, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 96
    .line 97
    .line 98
    iget-object p3, p1, Lzia;->c:Landroid/widget/TextView;

    .line 99
    .line 100
    const-string v0, ""

    .line 101
    .line 102
    if-eqz p2, :cond_0

    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    move-object v1, v0

    .line 112
    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    iget-object p3, p0, Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;->b:Landroid/app/Activity;

    .line 116
    .line 117
    invoke-static {p3}, Lcom/bumptech/glide/a;->t(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    if-eqz p2, :cond_1

    .line 122
    .line 123
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getImgUrl()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-nez v1, :cond_2

    .line 128
    .line 129
    :cond_1
    move-object v1, v0

    .line 130
    :cond_2
    invoke-virtual {p3, v1}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    sget v1, Lteam/opay/pay/R$mipmap;->logo:I

    .line 135
    .line 136
    invoke-virtual {p3, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    check-cast p3, Ljpc;

    .line 141
    .line 142
    invoke-virtual {p3, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->n(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    check-cast p3, Ljpc;

    .line 147
    .line 148
    iget-object v1, p1, Lzia;->b:Landroid/widget/ImageView;

    .line 149
    .line 150
    invoke-virtual {p3, v1}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 151
    .line 152
    .line 153
    iget-object p1, p1, Lzia;->d:Landroid/widget/ImageView;

    .line 154
    .line 155
    if-eqz p1, :cond_5

    .line 156
    .line 157
    iget-object p3, p0, Lcom/opay/team/newhome/adapter/BillPaymentMoreAdapter;->b:Landroid/app/Activity;

    .line 158
    .line 159
    invoke-static {p3}, Lcom/bumptech/glide/a;->t(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    if-eqz p2, :cond_4

    .line 164
    .line 165
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getSuperscriptImgUrl()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    if-nez p2, :cond_3

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_3
    move-object v0, p2

    .line 173
    :cond_4
    :goto_1
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p2, p1}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 178
    .line 179
    .line 180
    :cond_5
    return-void
.end method

.method public t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lzia;
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
    invoke-static {p1, p2, v0}, Lzia;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lzia;

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
