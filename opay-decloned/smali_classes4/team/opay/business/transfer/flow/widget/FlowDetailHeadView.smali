.class public final Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;
.super Lteam/opay/business/widget/LifecycleFrameLayout;
.source "FlowDetailView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ7\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2 \u0010\u0013\u001a\u001c\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\n0\u000f\u00a2\u0006\u0004\u0008\u0014\u0010\u0015JA\u0010\u0017\u001a\u00020\n2\u000e\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00102 \u0010\u0013\u001a\u001c\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\n0\u000fH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001d\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;",
        "Lteam/opay/business/widget/LifecycleFrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "onFinishInflate",
        "()V",
        "Lteam/opay/business/transfer/flow/api/TransactionDetailResp;",
        "detail",
        "Lkotlin/Function2;",
        "",
        "Lteam/opay/business/transfer/flow/api/TransactionEntity;",
        "Landroid/view/ViewGroup;",
        "addBodyViews",
        "d",
        "(Lteam/opay/business/transfer/flow/api/TransactionDetailResp;Lkotlin/jvm/functions/Function2;)V",
        "headMapList",
        "f",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V",
        "Lo86;",
        "Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;",
        "getBinding",
        "()Lo86;",
        "binding",
        "business-transfer-flow_release"
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
.field public static final synthetic e:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/business/transfer/flow/databinding/FlowItemTransactionDetailHeadBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;->e:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/business/widget/LifecycleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const-string p2, "from(getContext())"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 7
    const-class v2, Lo86;

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;-><init>(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    iput-object p1, p0, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;->d:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic c(Landroid/widget/LinearLayout;Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;Ljava/util/List;Lkotlin/jvm/functions/Function2;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;->g(Landroid/widget/LinearLayout;Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;Ljava/util/List;Lkotlin/jvm/functions/Function2;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g(Landroid/widget/LinearLayout;Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;Ljava/util/List;Lkotlin/jvm/functions/Function2;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    const-string p4, "headCollapse"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p4, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2, p3}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;->f(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private final getBinding()Lo86;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;->d:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;->e:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;->f(Landroid/view/ViewGroup;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lo86;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final d(Lteam/opay/business/transfer/flow/api/TransactionDetailResp;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p1    # Lteam/opay/business/transfer/flow/api/TransactionDetailResp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/TransactionDetailResp;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/TransactionEntity;",
            ">;-",
            "Landroid/view/ViewGroup;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "detail"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "addBodyViews"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/TransactionDetailResp;->getOrderInfoTopData()Lteam/opay/business/transfer/flow/api/OrderInfoBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;->getBinding()Lo86;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v1, v1, Lo86;->d:Lteam/opay/core/widget/fillet/CorpImageView;

    .line 20
    .line 21
    const-string v2, "transactionIcon"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/OrderInfoBean;->getIcon()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v3, v2

    .line 35
    :goto_0
    sget v4, Lteam/opay/core/common/R$drawable;->common_default_logo_grey:I

    .line 36
    .line 37
    invoke-static {v1, v3, v4}, Lle7;->d(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;->getBinding()Lo86;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v1, v1, Lo86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    .line 46
    const-string v3, "getString(...)"

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/OrderInfoBean;->getTitle()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    invoke-static {v4}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move-object v4, v2

    .line 64
    :goto_1
    if-eqz v4, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    sget v5, Lteam/opay/business/transfer/flow/R$string;->flow_transaction:I

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;->getBinding()Lo86;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget-object v1, v1, Lo86;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/OrderInfoBean;->getOrderAmount()Lteam/opay/core/common/amount/MoneyAmount;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_3

    .line 96
    .line 97
    const-string v5, ""

    .line 98
    .line 99
    invoke-virtual {v4, v5}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    if-eqz v4, :cond_3

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    sget v5, Lteam/opay/core/common/R$string;->common_none_money_place_holder:I

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    sget-object v1, Lgwa;->v:Lgwa$a;

    .line 123
    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/OrderInfoBean;->getOrderStatus()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    goto :goto_4

    .line 131
    :cond_4
    move-object v3, v2

    .line 132
    :goto_4
    invoke-virtual {v1, v3}, Lgwa$a;->a(Ljava/lang/String;)Lteam/opay/business/transfer/flow/internal/StatusBean;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;->getBinding()Lo86;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iget-object v3, v3, Lo86;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/internal/StatusBean;->d()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;->getBinding()Lo86;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    iget-object v3, v3, Lo86;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 154
    .line 155
    const-string v4, "transactionStatus"

    .line 156
    .line 157
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    if-eqz v0, :cond_5

    .line 161
    .line 162
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/OrderInfoBean;->getOrderStatus()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    :cond_5
    const/4 v0, 0x1

    .line 167
    const/4 v5, 0x0

    .line 168
    if-eqz v2, :cond_7

    .line 169
    .line 170
    invoke-static {v2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_6

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_6
    const/4 v2, 0x0

    .line 178
    goto :goto_6

    .line 179
    :cond_7
    :goto_5
    const/4 v2, 0x1

    .line 180
    :goto_6
    xor-int/2addr v0, v2

    .line 181
    invoke-static {v3, v0}, Lg0g;->j(Landroid/view/View;Z)V

    .line 182
    .line 183
    .line 184
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;->getBinding()Lo86;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iget-object v0, v0, Lo86;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 189
    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/internal/StatusBean;->c()I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    .line 204
    .line 205
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;->getBinding()Lo86;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    iget-object v0, v0, Lo86;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 210
    .line 211
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    new-instance v2, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 215
    .line 216
    invoke-direct {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    .line 217
    .line 218
    .line 219
    const/high16 v3, 0x40800000    # 4.0f

    .line 220
    .line 221
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    mul-float v4, v4, v3

    .line 240
    .line 241
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    const-class v4, Ljava/lang/Float;

    .line 246
    .line 247
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 252
    .line 253
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    if-eqz v6, :cond_8

    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_8
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 265
    .line 266
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    if-eqz v6, :cond_9

    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    check-cast v3, Ljava/lang/Float;

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_9
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 288
    .line 289
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    if-eqz v6, :cond_a

    .line 298
    .line 299
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    .line 300
    .line 301
    .line 302
    move-result-wide v3

    .line 303
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    check-cast v3, Ljava/lang/Float;

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_a
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 311
    .line 312
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-eqz v4, :cond_c

    .line 321
    .line 322
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 323
    .line 324
    .line 325
    move-result-wide v3

    .line 326
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    check-cast v3, Ljava/lang/Float;

    .line 331
    .line 332
    :goto_7
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    invoke-virtual {v2, v5, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    const-string v3, "build(...)"

    .line 345
    .line 346
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    new-instance v3, Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 350
    .line 351
    invoke-direct {v3}, Lteam/opay/core/common/android/ShapeConfig$Builder;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/internal/StatusBean;->a()I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    invoke-static {v4, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    invoke-virtual {v3, v1}, Lteam/opay/core/common/android/ShapeConfig$Builder;->k(I)Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-virtual {v1}, Lteam/opay/core/common/android/ShapeConfig$Builder;->a()Lteam/opay/core/common/android/ShapeConfig;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-static {v0, v2, v1}, Ls0g;->a(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;Lteam/opay/core/common/android/ShapeConfig;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/TransactionDetailResp;->getHeadMapList()Ljava/util/List;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    if-eqz p1, :cond_b

    .line 382
    .line 383
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;->f(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    .line 384
    .line 385
    .line 386
    :cond_b
    return-void

    .line 387
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 388
    .line 389
    const-string p2, "return number type not support"

    .line 390
    .line 391
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    throw p1
.end method

.method public final f(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/TransactionEntity;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/TransactionEntity;",
            ">;-",
            "Landroid/view/ViewGroup;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;->getBinding()Lo86;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lo86;->b:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lteam/opay/business/transfer/flow/api/TransactionEntity;

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {v4}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getShowDetail()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/4 v6, 0x1

    .line 39
    if-ne v5, v6, :cond_0

    .line 40
    .line 41
    invoke-virtual {v4}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getFold()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const-string v7, "1"

    .line 46
    .line 47
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-nez v3, :cond_2

    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v3, "headCollapse"

    .line 73
    .line 74
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_3

    .line 79
    .line 80
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p2, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :goto_1
    new-instance v1, Lteam/opay/business/transfer/flow/widget/FlowDetailHeaderCollapseView;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const-string v4, "getContext(...)"

    .line 100
    .line 101
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {v1, v3}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeaderCollapseView;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    new-instance v3, Lm66;

    .line 108
    .line 109
    invoke-direct {v3, v0, p0, p1, p2}, Lm66;-><init>(Landroid/widget/LinearLayout;Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2, v3}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeaderCollapseView;->b(ZLkotlin/jvm/functions/Function1;)V

    .line 113
    .line 114
    .line 115
    const/4 p1, -0x1

    .line 116
    const/4 p2, -0x2

    .line 117
    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 118
    .line 119
    .line 120
    :goto_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/business/widget/LifecycleFrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailHeadView;->getBinding()Lo86;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lo86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    return-void
.end method
