.class public final Lteam/opay/pay/cashier/result/OutPayResultAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "OutPayResultAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/result/OutPayResultAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/cashier/result/OutPayResultItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u000f\u0008\u0000\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\r\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u001f\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u001f\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000cJ\u001f\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000cJ\u001f\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u000cJ\u001f\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u000cR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/OutPayResultAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/cashier/result/OutPayResultItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Lag8;",
        "owner",
        "<init>",
        "(Lag8;)V",
        "helper",
        "item",
        "",
        "w",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/OutPayResultItem;)V",
        "v",
        "u",
        "r",
        "p",
        "t",
        "n",
        "a",
        "Lag8;",
        "getOwner",
        "()Lag8;",
        "b",
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
.field public static final b:Lteam/opay/pay/cashier/result/OutPayResultAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lag8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/result/OutPayResultAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/result/OutPayResultAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashier/result/OutPayResultAdapter;->b:Lteam/opay/pay/cashier/result/OutPayResultAdapter$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lag8;)V
    .locals 2
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lteam/opay/pay/cashier/result/OutPayResultAdapter;->a:Lag8;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    sget v0, Lteam/opay/pay/R$layout;->item_payment_success_info:I

    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 16
    .line 17
    .line 18
    sget p1, Lteam/opay/pay/R$layout;->item_out_pay_result_bonus:I

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    sget v1, Lteam/opay/pay/R$layout;->item_out_pay_pending_progress:I

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    invoke-virtual {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x4

    .line 35
    sget v0, Lteam/opay/pay/R$layout;->item_out_pay_result_tips:I

    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x5

    .line 41
    sget v0, Lteam/opay/pay/R$layout;->item_out_pay_banner:I

    .line 42
    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static synthetic k(Lkotlin/jvm/internal/Ref$BooleanRef;Lteam/opay/pay/cashier/result/ResultActivityInfoAdapter;Ljava/util/List;Landroid/widget/TextView;Lteam/opay/pay/cashier/result/OutPayResultItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/cashier/result/OutPayResultAdapter;->o(Lkotlin/jvm/internal/Ref$BooleanRef;Lteam/opay/pay/cashier/result/ResultActivityInfoAdapter;Ljava/util/List;Landroid/widget/TextView;Lteam/opay/pay/cashier/result/OutPayResultItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/cashier/result/OutPayResultAdapter;->s()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic m(Lteam/opay/pay/cashier/result/OutPayResultItem;Lteam/opay/pay/cashier/OutPayInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/result/OutPayResultAdapter;->q(Lteam/opay/pay/cashier/result/OutPayResultItem;Lteam/opay/pay/cashier/OutPayInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final o(Lkotlin/jvm/internal/Ref$BooleanRef;Lteam/opay/pay/cashier/result/ResultActivityInfoAdapter;Ljava/util/List;Landroid/widget/TextView;Lteam/opay/pay/cashier/result/OutPayResultItem;)Lkotlin/Unit;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-boolean v3, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 5
    .line 6
    xor-int/lit8 v4, v3, 0x1

    .line 7
    .line 8
    iput-boolean v4, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    sget p1, Lteam/opay/pay/R$string;->osdk_fold:I

    .line 16
    .line 17
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    sget p1, Lteam/opay/pay/R$mipmap;->osdk_ic_voucher_arrow_up:I

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p3, p1}, Lck3;->b(Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-interface {p2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    sget p1, Lteam/opay/pay/R$string;->osdk_unfold:I

    .line 42
    .line 43
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    sget p1, Lteam/opay/pay/R$mipmap;->osdk_ic_voucher_arrow_down:I

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p3, p1}, Lck3;->b(Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p4}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OutPayResultData;->h()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string p2, "PENDING"

    .line 68
    .line 69
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const-string p2, "outside"

    .line 74
    .line 75
    const-string p3, "page_type"

    .line 76
    .line 77
    const-string v3, "collapse"

    .line 78
    .line 79
    const-string v4, "expand"

    .line 80
    .line 81
    const-string v5, "button"

    .line 82
    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    sget-object p1, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 86
    .line 87
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 88
    .line 89
    if-eqz p0, :cond_1

    .line 90
    .line 91
    move-object v3, v4

    .line 92
    :cond_1
    invoke-static {v5, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p3, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    new-array p3, v0, [Lkotlin/Pair;

    .line 101
    .line 102
    aput-object p0, p3, v1

    .line 103
    .line 104
    aput-object p2, p3, v2

    .line 105
    .line 106
    const-string p0, "payment_pending_button_click"

    .line 107
    .line 108
    invoke-virtual {p1, p0, p3}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {p4}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OutPayResultData;->h()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string p4, "SUCCESS"

    .line 121
    .line 122
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_4

    .line 127
    .line 128
    sget-object p1, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 129
    .line 130
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 131
    .line 132
    if-eqz p0, :cond_3

    .line 133
    .line 134
    move-object v3, v4

    .line 135
    :cond_3
    invoke-static {v5, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {p3, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    new-array p3, v0, [Lkotlin/Pair;

    .line 144
    .line 145
    aput-object p0, p3, v1

    .line 146
    .line 147
    aput-object p2, p3, v2

    .line 148
    .line 149
    const-string p0, "payment_succ_button_click"

    .line 150
    .line 151
    invoke-virtual {p1, p0, p3}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 152
    .line 153
    .line 154
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 155
    .line 156
    return-object p0
.end method

.method public static final q(Lteam/opay/pay/cashier/result/OutPayResultItem;Lteam/opay/pay/cashier/OutPayInfo;)Lkotlin/Unit;
    .locals 16

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x5

    .line 7
    const-string v6, "info"

    .line 8
    .line 9
    move-object/from16 v7, p1

    .line 10
    .line 11
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    invoke-virtual {v6}, Lteam/opay/pay/cashier/OutPayResultData;->h()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const-string v8, "PENDING"

    .line 23
    .line 24
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const-string v8, "outside"

    .line 29
    .line 30
    const-string v9, "page_type"

    .line 31
    .line 32
    const-string v11, "link"

    .line 33
    .line 34
    const-string v12, "value"

    .line 35
    .line 36
    const-string v13, "JUMP"

    .line 37
    .line 38
    const-string v14, "action"

    .line 39
    .line 40
    const-string v15, "key"

    .line 41
    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    sget-object v6, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/OutPayInfo;->a()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    invoke-static {v15, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    invoke-static {v14, v13}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/OutPayInfo;->b()Lteam/opay/pay/cashier/OutPayInfo$ItemValue;

    .line 59
    .line 60
    .line 61
    move-result-object v14

    .line 62
    invoke-static {v12, v14}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object v12

    .line 66
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/OutPayInfo;->b()Lteam/opay/pay/cashier/OutPayInfo$ItemValue;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    if-eqz v7, :cond_0

    .line 71
    .line 72
    invoke-virtual {v7}, Lteam/opay/pay/cashier/OutPayInfo$ItemValue;->b()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const/4 v7, 0x0

    .line 78
    :goto_0
    invoke-static {v11, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-static {v9, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    new-array v5, v5, [Lkotlin/Pair;

    .line 87
    .line 88
    aput-object v10, v5, v4

    .line 89
    .line 90
    aput-object v13, v5, v3

    .line 91
    .line 92
    aput-object v12, v5, v2

    .line 93
    .line 94
    aput-object v7, v5, v1

    .line 95
    .line 96
    aput-object v8, v5, v0

    .line 97
    .line 98
    const-string v0, "payment_pending_button_click"

    .line 99
    .line 100
    invoke-virtual {v6, v0, v5}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v6}, Lteam/opay/pay/cashier/OutPayResultData;->h()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    const-string v10, "SUCCESS"

    .line 113
    .line 114
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_3

    .line 119
    .line 120
    sget-object v6, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 121
    .line 122
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/OutPayInfo;->a()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    invoke-static {v15, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    invoke-static {v14, v13}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 131
    .line 132
    .line 133
    move-result-object v13

    .line 134
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/OutPayInfo;->b()Lteam/opay/pay/cashier/OutPayInfo$ItemValue;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    invoke-static {v12, v14}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/OutPayInfo;->b()Lteam/opay/pay/cashier/OutPayInfo$ItemValue;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    if-eqz v7, :cond_2

    .line 147
    .line 148
    invoke-virtual {v7}, Lteam/opay/pay/cashier/OutPayInfo$ItemValue;->b()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    goto :goto_1

    .line 153
    :cond_2
    const/4 v7, 0x0

    .line 154
    :goto_1
    invoke-static {v11, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-static {v9, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    new-array v5, v5, [Lkotlin/Pair;

    .line 163
    .line 164
    aput-object v10, v5, v4

    .line 165
    .line 166
    aput-object v13, v5, v3

    .line 167
    .line 168
    aput-object v12, v5, v2

    .line 169
    .line 170
    aput-object v7, v5, v1

    .line 171
    .line 172
    aput-object v8, v5, v0

    .line 173
    .line 174
    const-string v0, "payment_succ_button_click"

    .line 175
    .line 176
    invoke-virtual {v6, v0, v5}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 177
    .line 178
    .line 179
    :cond_3
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 180
    .line 181
    return-object v0
.end method

.method public static final s()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/cashier/result/OutPayResultItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/OutPayResultAdapter;->w(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/OutPayResultItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/OutPayResultItem;)V
    .locals 9

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    sget v1, Lteam/opay/pay/R$id;->body_list:I

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lteam/opay/pay/cashier/OutPayResultData;->a()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_0
    move-object v6, v2

    .line 26
    new-instance v5, Lteam/opay/pay/cashier/result/ResultActivityInfoAdapter;

    .line 27
    .line 28
    invoke-direct {v5}, Lteam/opay/pay/cashier/result/ResultActivityInfoAdapter;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x2

    .line 51
    if-le v0, v1, :cond_1

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-interface {v6, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v5, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 62
    .line 63
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 64
    .line 65
    .line 66
    sget v0, Lteam/opay/pay/R$id;->viewMore:I

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lh3b;

    .line 81
    .line 82
    move-object v3, v0

    .line 83
    move-object v7, p1

    .line 84
    move-object v8, p2

    .line 85
    invoke-direct/range {v3 .. v8}, Lh3b;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lteam/opay/pay/cashier/result/ResultActivityInfoAdapter;Ljava/util/List;Landroid/widget/TextView;Lteam/opay/pay/cashier/result/OutPayResultItem;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v5, v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    return-void
.end method

.method public final p(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/OutPayResultItem;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    sget v1, Lteam/opay/pay/R$id;->body_list:I

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lteam/opay/pay/cashier/result/OutPayBodyAdapter;

    .line 24
    .line 25
    invoke-direct {v0}, Lteam/opay/pay/cashier/result/OutPayBodyAdapter;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lf3b;

    .line 29
    .line 30
    invoke-direct {v1, p2}, Lf3b;-><init>(Lteam/opay/pay/cashier/result/OutPayResultItem;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/result/OutPayBodyAdapter;->n(Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Lteam/opay/pay/cashier/OutPayResultData;->d()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-nez p2, :cond_0

    .line 45
    .line 46
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    :cond_0
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final r(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/OutPayResultItem;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 11
    .line 12
    .line 13
    sget v4, Lteam/opay/pay/R$id;->success_lottie:I

    .line 14
    .line 15
    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    .line 20
    .line 21
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {v6}, Lteam/opay/pay/cashier/OutPayResultData;->h()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const-string v7, "SUCCESS"

    .line 30
    .line 31
    const-string v8, "FAIL"

    .line 32
    .line 33
    const-string v9, "PENDING"

    .line 34
    .line 35
    const-string v10, "outside"

    .line 36
    .line 37
    const-string v11, "page_type"

    .line 38
    .line 39
    if-eqz v6, :cond_6

    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v12

    .line 45
    const v13, -0x447f341d

    .line 46
    .line 47
    .line 48
    if-eq v12, v13, :cond_4

    .line 49
    .line 50
    const v13, 0x20cf1e

    .line 51
    .line 52
    .line 53
    if-eq v12, v13, :cond_2

    .line 54
    .line 55
    const v13, 0x21c1577

    .line 56
    .line 57
    .line 58
    if-eq v12, v13, :cond_0

    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :cond_0
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-nez v6, :cond_1

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_1
    sget-object v6, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 71
    .line 72
    invoke-static {v11, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 73
    .line 74
    .line 75
    move-result-object v12

    .line 76
    new-array v13, v3, [Lkotlin/Pair;

    .line 77
    .line 78
    aput-object v12, v13, v5

    .line 79
    .line 80
    const-string v12, "COMMON_payment_pending_show"

    .line 81
    .line 82
    invoke-virtual {v6, v12, v13}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v4}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    sget v4, Lteam/opay/pay/R$id;->iv_status:I

    .line 92
    .line 93
    sget v6, Lteam/opay/pay/R$mipmap;->ic_pay_padding:I

    .line 94
    .line 95
    invoke-virtual {v1, v4, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 96
    .line 97
    .line 98
    sget v4, Lteam/opay/pay/R$id;->tv_status:I

    .line 99
    .line 100
    sget v6, Lteam/opay/pay/R$string;->osdk_pay_result_pending:I

    .line 101
    .line 102
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v1, v4, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 107
    .line 108
    .line 109
    iget-object v6, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    sget v12, Lteam/opay/pay/R$color;->osdk_color_FF9100:I

    .line 112
    .line 113
    invoke-static {v6, v12}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    invoke-virtual {v1, v4, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 118
    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :cond_2
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-nez v6, :cond_3

    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :cond_3
    sget-object v6, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 131
    .line 132
    invoke-static {v11, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    new-array v13, v3, [Lkotlin/Pair;

    .line 137
    .line 138
    aput-object v12, v13, v5

    .line 139
    .line 140
    const-string v12, "COMMON_pay_fail_window_show"

    .line 141
    .line 142
    invoke-virtual {v6, v12, v13}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v4}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    sget v4, Lteam/opay/pay/R$id;->iv_status:I

    .line 152
    .line 153
    sget v6, Lteam/opay/pay/R$mipmap;->ic_transaction_failed:I

    .line 154
    .line 155
    invoke-virtual {v1, v4, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 156
    .line 157
    .line 158
    sget v4, Lteam/opay/pay/R$id;->tv_status:I

    .line 159
    .line 160
    sget v6, Lteam/opay/pay/R$string;->transaction_failed_header:I

    .line 161
    .line 162
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v1, v4, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 167
    .line 168
    .line 169
    iget-object v6, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 170
    .line 171
    sget v12, Lteam/opay/pay/R$color;->red_pink:I

    .line 172
    .line 173
    invoke-static {v6, v12}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    invoke-virtual {v1, v4, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_4
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-nez v6, :cond_5

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_5
    sget-object v6, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 189
    .line 190
    invoke-static {v11, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    new-array v13, v3, [Lkotlin/Pair;

    .line 195
    .line 196
    aput-object v12, v13, v5

    .line 197
    .line 198
    const-string v12, "COMMON_payment_succ_show"

    .line 199
    .line 200
    invoke-virtual {v6, v12, v13}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 201
    .line 202
    .line 203
    sget v6, Lteam/opay/pay/R$id;->iv_status:I

    .line 204
    .line 205
    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v12

    .line 209
    const/4 v13, 0x4

    .line 210
    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v4}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 217
    .line 218
    .line 219
    iget-object v12, v0, Lteam/opay/pay/cashier/result/OutPayResultAdapter;->a:Lag8;

    .line 220
    .line 221
    new-instance v13, Lg3b;

    .line 222
    .line 223
    invoke-direct {v13}, Lg3b;-><init>()V

    .line 224
    .line 225
    .line 226
    const-wide/16 v14, 0x9c4

    .line 227
    .line 228
    invoke-static {v4, v12, v14, v15, v13}, Lteam/opay/core/android/ViewKt;->j(Lcom/airbnb/lottie/LottieAnimationView;Lag8;JLkotlin/jvm/functions/Function0;)V

    .line 229
    .line 230
    .line 231
    sget v4, Lteam/opay/pay/R$mipmap;->ic_pay_success:I

    .line 232
    .line 233
    invoke-virtual {v1, v6, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 234
    .line 235
    .line 236
    sget v4, Lteam/opay/pay/R$id;->tv_status:I

    .line 237
    .line 238
    sget v6, Lteam/opay/pay/R$string;->osdk_pay_result_success:I

    .line 239
    .line 240
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-virtual {v1, v4, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 245
    .line 246
    .line 247
    iget-object v6, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 248
    .line 249
    sget v12, Lteam/opay/pay/R$color;->mint:I

    .line 250
    .line 251
    invoke-static {v6, v12}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    invoke-virtual {v1, v4, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 256
    .line 257
    .line 258
    goto :goto_1

    .line 259
    :cond_6
    :goto_0
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 260
    .line 261
    .line 262
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    invoke-virtual {v6}, Lteam/opay/pay/cashier/OutPayResultData;->a()Ljava/util/List;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    const-string v12, ","

    .line 276
    .line 277
    if-eqz v6, :cond_8

    .line 278
    .line 279
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 284
    .line 285
    .line 286
    move-result v13

    .line 287
    if-eqz v13, :cond_8

    .line 288
    .line 289
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v13

    .line 293
    check-cast v13, Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 294
    .line 295
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 296
    .line 297
    .line 298
    move-result v14

    .line 299
    if-nez v14, :cond_7

    .line 300
    .line 301
    invoke-virtual {v13}, Lteam/opay/pay/cashier/ActivityItemInfo;->d()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v13

    .line 305
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_7
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v13}, Lteam/opay/pay/cashier/ActivityItemInfo;->d()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v13

    .line 316
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    goto :goto_2

    .line 320
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    invoke-virtual {v6}, Lteam/opay/pay/cashier/OutPayResultData;->d()Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    if-eqz v6, :cond_a

    .line 329
    .line 330
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 335
    .line 336
    .line 337
    move-result v13

    .line 338
    if-eqz v13, :cond_a

    .line 339
    .line 340
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v13

    .line 344
    check-cast v13, Lteam/opay/pay/cashier/OutPayInfo;

    .line 345
    .line 346
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 347
    .line 348
    .line 349
    move-result v14

    .line 350
    if-nez v14, :cond_9

    .line 351
    .line 352
    invoke-virtual {v13}, Lteam/opay/pay/cashier/OutPayInfo;->a()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v13

    .line 356
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    goto :goto_3

    .line 360
    :cond_9
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v13}, Lteam/opay/pay/cashier/OutPayInfo;->a()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v13

    .line 367
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    invoke-virtual {v6}, Lteam/opay/pay/cashier/OutPayResultData;->i()Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    if-eqz v6, :cond_c

    .line 380
    .line 381
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 382
    .line 383
    .line 384
    move-result v13

    .line 385
    if-nez v13, :cond_b

    .line 386
    .line 387
    invoke-virtual {v6}, Lteam/opay/pay/cashier/ActivityItemInfo;->d()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    goto :goto_4

    .line 395
    :cond_b
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v6}, Lteam/opay/pay/cashier/ActivityItemInfo;->d()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    :cond_c
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    invoke-virtual {v6}, Lteam/opay/pay/cashier/OutPayResultData;->h()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v6

    .line 417
    const-string v9, "key"

    .line 418
    .line 419
    if-eqz v6, :cond_d

    .line 420
    .line 421
    sget-object v6, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 422
    .line 423
    invoke-static {v9, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    invoke-static {v11, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 428
    .line 429
    .line 430
    move-result-object v7

    .line 431
    new-array v2, v2, [Lkotlin/Pair;

    .line 432
    .line 433
    aput-object v4, v2, v5

    .line 434
    .line 435
    aput-object v7, v2, v3

    .line 436
    .line 437
    const-string v4, "COMMON_payment_pending_item_show"

    .line 438
    .line 439
    invoke-virtual {v6, v4, v2}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 440
    .line 441
    .line 442
    goto :goto_5

    .line 443
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    invoke-virtual {v6}, Lteam/opay/pay/cashier/OutPayResultData;->h()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v6

    .line 451
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v6

    .line 455
    if-eqz v6, :cond_e

    .line 456
    .line 457
    sget-object v6, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 458
    .line 459
    invoke-static {v9, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    invoke-static {v11, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 464
    .line 465
    .line 466
    move-result-object v7

    .line 467
    new-array v2, v2, [Lkotlin/Pair;

    .line 468
    .line 469
    aput-object v4, v2, v5

    .line 470
    .line 471
    aput-object v7, v2, v3

    .line 472
    .line 473
    const-string v4, "COMMON_payment_succ_item_show"

    .line 474
    .line 475
    invoke-virtual {v6, v4, v2}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 476
    .line 477
    .line 478
    :cond_e
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    invoke-virtual {v2}, Lteam/opay/pay/cashier/OutPayResultData;->h()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    if-eqz v2, :cond_11

    .line 491
    .line 492
    sget v2, Lteam/opay/pay/R$id;->fail_tv:I

    .line 493
    .line 494
    invoke-virtual {v1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 495
    .line 496
    .line 497
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    invoke-virtual {v4}, Lteam/opay/pay/cashier/OutPayResultData;->f()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    if-nez v4, :cond_f

    .line 506
    .line 507
    const-string v4, ""

    .line 508
    .line 509
    :cond_f
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 510
    .line 511
    .line 512
    move-result v5

    .line 513
    if-nez v5, :cond_10

    .line 514
    .line 515
    sget v4, Lteam/opay/pay/R$string;->payment_failed_description:I

    .line 516
    .line 517
    invoke-static {v4}, Ljmf;->k(I)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v4

    .line 521
    :cond_10
    invoke-virtual {v1, v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 522
    .line 523
    .line 524
    goto :goto_6

    .line 525
    :cond_11
    sget v2, Lteam/opay/pay/R$id;->fail_tv:I

    .line 526
    .line 527
    invoke-virtual {v1, v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 528
    .line 529
    .line 530
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    invoke-virtual {v2}, Lteam/opay/pay/cashier/OutPayResultData;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    const/4 v4, 0x0

    .line 539
    if-eqz v2, :cond_12

    .line 540
    .line 541
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getPositive()Z

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    if-ne v2, v3, :cond_12

    .line 546
    .line 547
    sget v2, Lteam/opay/pay/R$id;->before_amount:I

    .line 548
    .line 549
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    check-cast v2, Landroid/widget/TextView;

    .line 554
    .line 555
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 556
    .line 557
    .line 558
    invoke-static {v2, v3}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 559
    .line 560
    .line 561
    const/16 v5, 0x10

    .line 562
    .line 563
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 564
    .line 565
    .line 566
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 567
    .line 568
    .line 569
    move-result-object v5

    .line 570
    invoke-virtual {v5}, Lteam/opay/pay/cashier/OutPayResultData;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 571
    .line 572
    .line 573
    move-result-object v5

    .line 574
    invoke-static {v5, v4, v3, v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toText$default(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    .line 580
    .line 581
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-virtual {v2}, Lteam/opay/pay/cashier/OutPayResultData;->i()Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    if-eqz v2, :cond_16

    .line 590
    .line 591
    sget v2, Lteam/opay/pay/R$id;->layoutPro:I

    .line 592
    .line 593
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    check-cast v2, Landroid/widget/LinearLayout;

    .line 598
    .line 599
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 600
    .line 601
    .line 602
    invoke-static {v2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 606
    .line 607
    .line 608
    move-result-object v5

    .line 609
    invoke-virtual {v5}, Lteam/opay/pay/cashier/OutPayResultData;->i()Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 610
    .line 611
    .line 612
    move-result-object v5

    .line 613
    invoke-virtual {v5}, Lteam/opay/pay/cashier/ActivityItemInfo;->a()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v5

    .line 617
    if-eqz v5, :cond_14

    .line 618
    .line 619
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 620
    .line 621
    .line 622
    move-result v5

    .line 623
    if-nez v5, :cond_13

    .line 624
    .line 625
    goto :goto_7

    .line 626
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 627
    .line 628
    .line 629
    move-result-object v5

    .line 630
    invoke-virtual {v5}, Lteam/opay/pay/cashier/OutPayResultData;->i()Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 631
    .line 632
    .line 633
    move-result-object v5

    .line 634
    invoke-virtual {v5}, Lteam/opay/pay/cashier/ActivityItemInfo;->a()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v5

    .line 638
    const/16 v6, 0x8

    .line 639
    .line 640
    invoke-static {v2, v6, v5}, Lteam/opay/core/android/ViewKt;->s(Landroid/view/View;ILjava/lang/String;)V

    .line 641
    .line 642
    .line 643
    :cond_14
    :goto_7
    sget v2, Lteam/opay/pay/R$id;->tvProInfo:I

    .line 644
    .line 645
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 646
    .line 647
    .line 648
    move-result-object v2

    .line 649
    check-cast v2, Landroid/widget/TextView;

    .line 650
    .line 651
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 652
    .line 653
    .line 654
    move-result-object v5

    .line 655
    invoke-virtual {v5}, Lteam/opay/pay/cashier/OutPayResultData;->i()Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 656
    .line 657
    .line 658
    move-result-object v5

    .line 659
    invoke-virtual {v5}, Lteam/opay/pay/cashier/ActivityItemInfo;->d()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 664
    .line 665
    .line 666
    move-result-object v6

    .line 667
    invoke-virtual {v6}, Lteam/opay/pay/cashier/OutPayResultData;->i()Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 668
    .line 669
    .line 670
    move-result-object v6

    .line 671
    invoke-virtual {v6}, Lteam/opay/pay/cashier/ActivityItemInfo;->b()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v6

    .line 675
    new-instance v7, Ljava/lang/StringBuilder;

    .line 676
    .line 677
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    const-string v5, " "

    .line 684
    .line 685
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v5

    .line 695
    sget-object v6, Lteam/opay/swarmfoundation/color/DarkColors;->a:Lteam/opay/swarmfoundation/color/DarkColors;

    .line 696
    .line 697
    invoke-virtual {v6, v5}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 698
    .line 699
    .line 700
    move-result-object v5

    .line 701
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 705
    .line 706
    .line 707
    move-result-object v2

    .line 708
    invoke-virtual {v2}, Lteam/opay/pay/cashier/OutPayResultData;->i()Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 709
    .line 710
    .line 711
    move-result-object v2

    .line 712
    invoke-virtual {v2}, Lteam/opay/pay/cashier/ActivityItemInfo;->c()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v2

    .line 716
    if-eqz v2, :cond_16

    .line 717
    .line 718
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 719
    .line 720
    .line 721
    move-result v2

    .line 722
    if-nez v2, :cond_15

    .line 723
    .line 724
    goto :goto_8

    .line 725
    :cond_15
    sget v2, Lteam/opay/pay/R$id;->iconProInfo:I

    .line 726
    .line 727
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 728
    .line 729
    .line 730
    move-result-object v2

    .line 731
    move-object v5, v2

    .line 732
    check-cast v5, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 733
    .line 734
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    invoke-static {v5}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 738
    .line 739
    .line 740
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    invoke-virtual {v2}, Lteam/opay/pay/cashier/OutPayResultData;->i()Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 745
    .line 746
    .line 747
    move-result-object v2

    .line 748
    invoke-virtual {v2}, Lteam/opay/pay/cashier/ActivityItemInfo;->c()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v6

    .line 752
    sget v7, Lteam/opay/pay/R$mipmap;->logo:I

    .line 753
    .line 754
    const/16 v12, 0x3c

    .line 755
    .line 756
    const/4 v13, 0x0

    .line 757
    const/4 v8, 0x0

    .line 758
    const/4 v9, 0x0

    .line 759
    const/4 v10, 0x0

    .line 760
    const/4 v11, 0x0

    .line 761
    invoke-static/range {v5 .. v13}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 762
    .line 763
    .line 764
    :cond_16
    :goto_8
    sget v2, Lteam/opay/pay/R$id;->tv_amount:I

    .line 765
    .line 766
    invoke-virtual {v1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 767
    .line 768
    .line 769
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 770
    .line 771
    .line 772
    move-result-object v5

    .line 773
    invoke-virtual {v5}, Lteam/opay/pay/cashier/OutPayResultData;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 774
    .line 775
    .line 776
    move-result-object v5

    .line 777
    if-eqz v5, :cond_17

    .line 778
    .line 779
    invoke-static {v5, v4, v3, v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toText$default(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v4

    .line 783
    :cond_17
    invoke-virtual {v1, v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 784
    .line 785
    .line 786
    return-void
.end method

.method public final t(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/OutPayResultItem;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    sget v1, Lteam/opay/pay/R$id;->list_progress:I

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x3

    .line 18
    invoke-direct {v1, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lteam/opay/pay/cashier/result/OutPayProgressAdapter;

    .line 25
    .line 26
    invoke-direct {v0}, Lteam/opay/pay/cashier/result/OutPayProgressAdapter;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Lteam/opay/pay/cashier/OutPayResultData;->j()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    :cond_0
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final u(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/OutPayResultItem;)V
    .locals 2

    .line 1
    sget v0, Lteam/opay/pay/R$id;->tipsView:I

    .line 2
    .line 3
    sget-object v1, Lteam/opay/swarmfoundation/color/DarkColors;->a:Lteam/opay/swarmfoundation/color/DarkColors;

    .line 4
    .line 5
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lteam/opay/pay/cashier/OutPayResultData;->k()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    const-string p2, ""

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v1, p2}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final v(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/OutPayResultItem;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->a()Lteam/opay/pay/cashier/OutPayResultData;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lteam/opay/pay/cashier/OutPayResultData;->c()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    .line 17
    sget v0, Lteam/opay/pay/R$id;->item_banner:I

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lteam/opay/pay/ad/OpayAdBannerView;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lteam/opay/pay/ad/OpayAdBannerView;->b(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public w(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/OutPayResultItem;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/cashier/result/OutPayResultItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/OutPayResultItem;->getItemType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_4

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/OutPayResultAdapter;->v(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/OutPayResultItem;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/OutPayResultAdapter;->u(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/OutPayResultItem;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/OutPayResultAdapter;->n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/OutPayResultItem;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/OutPayResultAdapter;->t(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/OutPayResultItem;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/OutPayResultAdapter;->p(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/OutPayResultItem;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/OutPayResultAdapter;->r(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/OutPayResultItem;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method
