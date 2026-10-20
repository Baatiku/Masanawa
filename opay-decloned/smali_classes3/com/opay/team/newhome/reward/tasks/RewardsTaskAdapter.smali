.class public final Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "RewardsTaskAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/opay/team/newhome/reward/RewardsBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001d\u0010\r\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J/\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0012J\u001f\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0012J\u001f\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0012J3\u0010\"\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0008\u0010 \u001a\u0004\u0018\u00010\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\u001fH\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u001f\u0010$\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008$\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R0\u00100\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000c\u0018\u00010)8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/\u00a8\u00061"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lcom/opay/team/newhome/reward/RewardsBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Landroid/content/Context;",
        "context",
        "",
        "fromHome",
        "<init>",
        "(Landroid/content/Context;Z)V",
        "loading",
        "bean",
        "",
        "w",
        "(ZLcom/opay/team/newhome/reward/RewardsBean;)V",
        "helper",
        "item",
        "t",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsBean;)V",
        "",
        "",
        "payloads",
        "u",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsBean;Ljava/util/List;)V",
        "q",
        "r",
        "n",
        "Landroid/widget/TextView;",
        "amountTextView",
        "Landroid/widget/ImageView;",
        "amountIconImageView",
        "",
        "button",
        "icon",
        "m",
        "(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V",
        "p",
        "a",
        "Landroid/content/Context;",
        "b",
        "Z",
        "Lkotlin/Function1;",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "getOnButtonClick",
        "()Lkotlin/jvm/functions/Function1;",
        "v",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onButtonClick",
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
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Z

.field public c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/RewardsBean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 3
    iput-object p1, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->a:Landroid/content/Context;

    .line 4
    iput-boolean p2, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->b:Z

    const/4 p1, 0x1

    .line 5
    sget p2, Lteam/opay/pay/R$layout;->omain_rewards_item_title:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x2

    .line 6
    sget p2, Lteam/opay/pay/R$layout;->omain_rewards_item_voucher:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x3

    .line 7
    sget p2, Lteam/opay/pay/R$layout;->omain_rewards_item_task:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x6

    .line 8
    sget p2, Lteam/opay/pay/R$layout;->omain_rewards_item_empty_bouns:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic k(Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;Lcom/opay/team/newhome/reward/RewardsBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->s(Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;Lcom/opay/team/newhome/reward/RewardsBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lcom/opay/team/newhome/reward/RewardsBean;Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->o(Lcom/opay/team/newhome/reward/RewardsBean;Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final o(Lcom/opay/team/newhome/reward/RewardsBean;Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;)Lkotlin/Unit;
    .locals 12

    .line 1
    sget-object v0, Lnyc;->a:Lnyc;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lnyc;->a(Lcom/opay/team/newhome/reward/TaskItem;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x3

    .line 13
    if-ne v1, v3, :cond_2

    .line 14
    .line 15
    if-ne v1, v3, :cond_5

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_5

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/TaskItem;->getRewardType()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ne v1, v3, :cond_5

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/TaskItem;->getRewardSubType()Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_5

    .line 52
    .line 53
    :cond_2
    sget-object v3, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 54
    .line 55
    iget-object v4, p1, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->a:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/TaskItem;->getJumpUrl()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    move-object v1, v2

    .line 69
    :goto_0
    if-nez v1, :cond_4

    .line 70
    .line 71
    const-string v1, ""

    .line 72
    .line 73
    :cond_4
    move-object v5, v1

    .line 74
    const/4 v1, 0x0

    .line 75
    new-array v9, v1, [Lkotlin/Pair;

    .line 76
    .line 77
    const/16 v10, 0x1c

    .line 78
    .line 79
    const/4 v11, 0x0

    .line 80
    const/4 v6, 0x0

    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    invoke-static/range {v3 .. v11}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_1
    iget-boolean v1, p1, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->b:Z

    .line 87
    .line 88
    if-eqz v1, :cond_8

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsBean;->e()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsBean;->a()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    if-eqz v4, :cond_6

    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/TaskItem;->getId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    goto :goto_2

    .line 109
    :cond_6
    move-object v4, v2

    .line 110
    :goto_2
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    if-eqz v5, :cond_7

    .line 115
    .line 116
    invoke-virtual {v5}, Lcom/opay/team/newhome/reward/TaskItem;->getStatus()Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    :cond_7
    move-object v5, v2

    .line 121
    const/16 v7, 0x20

    .line 122
    .line 123
    const/4 v8, 0x0

    .line 124
    const-string v6, "button_go"

    .line 125
    .line 126
    const/4 v9, 0x0

    .line 127
    move v2, v3

    .line 128
    move-object v3, v6

    .line 129
    move-object v6, v9

    .line 130
    invoke-static/range {v0 .. v8}, Lnyc;->c(Lnyc;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_8
    iget-object p1, p1, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 134
    .line 135
    if-eqz p1, :cond_9

    .line 136
    .line 137
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    return-object p0
.end method

.method public static final s(Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;Lcom/opay/team/newhome/reward/RewardsBean;)Lkotlin/Unit;
    .locals 10

    .line 1
    sget-object v0, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/RewardsBean;->f()Lcom/opay/team/newhome/reward/VoucherItem;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/VoucherItem;->d()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    new-array v6, v3, [Lkotlin/Pair;

    .line 19
    .line 20
    const/16 v7, 0x1c

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-static/range {v0 .. v8}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->b:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v1, Lnyc;->a:Lnyc;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/RewardsBean;->e()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/RewardsBean;->a()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/RewardsBean;->f()Lcom/opay/team/newhome/reward/VoucherItem;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/VoucherItem;->c()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const/16 v8, 0x30

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    const-string v4, "button_go"

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    invoke-static/range {v1 .. v9}, Lnyc;->c(Lnyc;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object p0, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 62
    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/reward/RewardsBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->t(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic convertPayloads(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/reward/RewardsBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->u(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsBean;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    move-object p3, v0

    .line 6
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p4, :cond_1

    .line 16
    .line 17
    move-object p4, v0

    .line 18
    :cond_1
    invoke-virtual {p1, p4}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final n(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsBean;)V
    .locals 12

    .line 1
    sget v0, Lteam/opay/pay/R$id;->task_tag:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/TaskItem;->getTaskTag()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    :goto_0
    const-string v3, ""

    .line 23
    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/TaskItem;->getTaskTag()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move-object v1, v2

    .line 51
    :goto_1
    if-nez v1, :cond_3

    .line 52
    .line 53
    move-object v1, v3

    .line 54
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    :goto_3
    sget v0, Lteam/opay/pay/R$id;->task_amount_value_v2:I

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/TaskItem;->getRewardAmount()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_4

    .line 77
    :cond_5
    move-object v1, v2

    .line 78
    :goto_4
    if-nez v1, :cond_6

    .line 79
    .line 80
    move-object v1, v3

    .line 81
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v5, "+"

    .line 87
    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 99
    .line 100
    .line 101
    sget v0, Lteam/opay/pay/R$id;->task_title:I

    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-eqz v1, :cond_7

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/TaskItem;->getTaskTitle()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    goto :goto_5

    .line 114
    :cond_7
    move-object v1, v2

    .line 115
    :goto_5
    if-nez v1, :cond_8

    .line 116
    .line 117
    move-object v1, v3

    .line 118
    :cond_8
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 123
    .line 124
    .line 125
    sget v0, Lteam/opay/pay/R$id;->task_progress:I

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    if-eqz v1, :cond_9

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/TaskItem;->getTotalTaskCount()Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    goto :goto_6

    .line 144
    :cond_9
    move-object v1, v2

    .line 145
    :goto_6
    const/4 v4, 0x0

    .line 146
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-static {v1, v5}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Ljava/lang/Number;

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    const/4 v5, 0x1

    .line 161
    if-le v1, v5, :cond_c

    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    if-eqz v1, :cond_a

    .line 168
    .line 169
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/TaskItem;->getFinishTaskCount()Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    goto :goto_7

    .line 174
    :cond_a
    move-object v1, v2

    .line 175
    :goto_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-static {v1, v6}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    if-eqz v6, :cond_b

    .line 188
    .line 189
    invoke-virtual {v6}, Lcom/opay/team/newhome/reward/TaskItem;->getTotalTaskCount()Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    goto :goto_8

    .line 194
    :cond_b
    move-object v6, v2

    .line 195
    :goto_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-static {v6, v7}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    const-string v8, "("

    .line 209
    .line 210
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, "/"

    .line 217
    .line 218
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v1, ")"

    .line 225
    .line 226
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 240
    .line 241
    .line 242
    goto :goto_9

    .line 243
    :cond_c
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 247
    .line 248
    .line 249
    :goto_9
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    if-eqz v0, :cond_f

    .line 254
    .line 255
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getStatus()Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    if-nez v0, :cond_d

    .line 260
    .line 261
    goto :goto_a

    .line 262
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    const/16 v1, 0xa

    .line 267
    .line 268
    if-ne v0, v1, :cond_f

    .line 269
    .line 270
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getStatusExtCopy()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    if-nez v0, :cond_e

    .line 279
    .line 280
    move-object v0, v3

    .line 281
    :cond_e
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    goto :goto_c

    .line 286
    :cond_f
    :goto_a
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    if-eqz v0, :cond_10

    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getTaskDesc()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    goto :goto_b

    .line 297
    :cond_10
    move-object v0, v2

    .line 298
    :goto_b
    if-nez v0, :cond_11

    .line 299
    .line 300
    move-object v0, v3

    .line 301
    :cond_11
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    :goto_c
    sget v1, Lteam/opay/pay/R$id;->task_desc:I

    .line 306
    .line 307
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 308
    .line 309
    .line 310
    sget v0, Lteam/opay/pay/R$id;->task_image:I

    .line 311
    .line 312
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    move-object v6, v0

    .line 317
    check-cast v6, Landroid/widget/ImageView;

    .line 318
    .line 319
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    if-eqz v0, :cond_12

    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getTaskIcon()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    goto :goto_d

    .line 333
    :cond_12
    move-object v0, v2

    .line 334
    :goto_d
    if-nez v0, :cond_13

    .line 335
    .line 336
    move-object v7, v3

    .line 337
    goto :goto_e

    .line 338
    :cond_13
    move-object v7, v0

    .line 339
    :goto_e
    sget v8, Lteam/opay/pay/R$mipmap;->omain_ic_task_default:I

    .line 340
    .line 341
    const/4 v10, 0x4

    .line 342
    const/4 v11, 0x0

    .line 343
    const/4 v9, 0x0

    .line 344
    invoke-static/range {v6 .. v11}, Lme7;->v(Landroid/widget/ImageView;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    sget v0, Lteam/opay/pay/R$id;->task_amount:I

    .line 348
    .line 349
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    check-cast v0, Landroid/widget/LinearLayout;

    .line 354
    .line 355
    sget v1, Lteam/opay/pay/R$id;->task_amount_value:I

    .line 356
    .line 357
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    check-cast v1, Landroid/widget/TextView;

    .line 362
    .line 363
    sget v6, Lteam/opay/pay/R$id;->task_amount_icon:I

    .line 364
    .line 365
    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    check-cast v6, Landroid/widget/ImageView;

    .line 370
    .line 371
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    new-instance v7, Lnxc;

    .line 375
    .line 376
    invoke-direct {v7, p2, p0}, Lnxc;-><init>(Lcom/opay/team/newhome/reward/RewardsBean;Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;)V

    .line 377
    .line 378
    .line 379
    invoke-static {v0, v7}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 380
    .line 381
    .line 382
    sget v7, Lteam/opay/pay/R$id;->task_unenable:I

    .line 383
    .line 384
    invoke-virtual {p1, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 385
    .line 386
    .line 387
    move-result-object v7

    .line 388
    check-cast v7, Landroid/widget/TextView;

    .line 389
    .line 390
    sget v8, Lteam/opay/pay/R$id;->task_tip:I

    .line 391
    .line 392
    invoke-virtual {p1, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 393
    .line 394
    .line 395
    move-result-object v8

    .line 396
    check-cast v8, Landroid/widget/TextView;

    .line 397
    .line 398
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 399
    .line 400
    .line 401
    move-result-object v9

    .line 402
    if-eqz v9, :cond_14

    .line 403
    .line 404
    invoke-virtual {v9}, Lcom/opay/team/newhome/reward/TaskItem;->getCountDownCopyWriting()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v9

    .line 408
    goto :goto_f

    .line 409
    :cond_14
    move-object v9, v2

    .line 410
    :goto_f
    if-eqz v9, :cond_17

    .line 411
    .line 412
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 413
    .line 414
    .line 415
    move-result v9

    .line 416
    if-nez v9, :cond_15

    .line 417
    .line 418
    goto :goto_11

    .line 419
    :cond_15
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    invoke-static {v8}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 426
    .line 427
    .line 428
    move-result-object v9

    .line 429
    if-eqz v9, :cond_16

    .line 430
    .line 431
    invoke-virtual {v9}, Lcom/opay/team/newhome/reward/TaskItem;->getCountDownCopyWriting()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v9

    .line 435
    goto :goto_10

    .line 436
    :cond_16
    move-object v9, v2

    .line 437
    :goto_10
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    .line 439
    .line 440
    goto :goto_12

    .line 441
    :cond_17
    :goto_11
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    invoke-static {v8}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 445
    .line 446
    .line 447
    :goto_12
    sget v8, Lteam/opay/pay/R$id;->task_up_to:I

    .line 448
    .line 449
    invoke-virtual {p1, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 450
    .line 451
    .line 452
    move-result-object v8

    .line 453
    check-cast v8, Landroid/widget/TextView;

    .line 454
    .line 455
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 456
    .line 457
    .line 458
    move-result-object v9

    .line 459
    if-eqz v9, :cond_18

    .line 460
    .line 461
    invoke-virtual {v9}, Lcom/opay/team/newhome/reward/TaskItem;->getRewardAmountExtCopy()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v9

    .line 465
    goto :goto_13

    .line 466
    :cond_18
    move-object v9, v2

    .line 467
    :goto_13
    if-eqz v9, :cond_1b

    .line 468
    .line 469
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 470
    .line 471
    .line 472
    move-result v9

    .line 473
    if-nez v9, :cond_19

    .line 474
    .line 475
    goto :goto_15

    .line 476
    :cond_19
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    invoke-static {v8}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 483
    .line 484
    .line 485
    move-result-object v9

    .line 486
    if-eqz v9, :cond_1a

    .line 487
    .line 488
    invoke-virtual {v9}, Lcom/opay/team/newhome/reward/TaskItem;->getRewardAmountExtCopy()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v9

    .line 492
    goto :goto_14

    .line 493
    :cond_1a
    move-object v9, v2

    .line 494
    :goto_14
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    .line 496
    .line 497
    goto :goto_16

    .line 498
    :cond_1b
    :goto_15
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    invoke-static {v8}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 502
    .line 503
    .line 504
    :goto_16
    sget-object v8, Lnyc;->a:Lnyc;

    .line 505
    .line 506
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 507
    .line 508
    .line 509
    move-result-object v9

    .line 510
    invoke-virtual {v8, v9}, Lnyc;->a(Lcom/opay/team/newhome/reward/TaskItem;)I

    .line 511
    .line 512
    .line 513
    move-result v8

    .line 514
    if-eq v8, v5, :cond_2a

    .line 515
    .line 516
    const/4 v9, 0x2

    .line 517
    if-eq v8, v9, :cond_25

    .line 518
    .line 519
    const/4 v9, 0x4

    .line 520
    if-eq v8, v9, :cond_20

    .line 521
    .line 522
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 526
    .line 527
    .line 528
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 529
    .line 530
    .line 531
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    if-eqz v0, :cond_1c

    .line 539
    .line 540
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getButtonCopy()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    goto :goto_17

    .line 545
    :cond_1c
    move-object v0, v2

    .line 546
    :goto_17
    if-nez v0, :cond_1d

    .line 547
    .line 548
    move-object v0, v3

    .line 549
    :cond_1d
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    if-eqz v4, :cond_1e

    .line 554
    .line 555
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/TaskItem;->getRewardIconSmall()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    :cond_1e
    if-nez v2, :cond_1f

    .line 560
    .line 561
    goto :goto_18

    .line 562
    :cond_1f
    move-object v3, v2

    .line 563
    :goto_18
    invoke-virtual {p0, v1, v6, v0, v3}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->m(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    invoke-static {v7}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 570
    .line 571
    .line 572
    goto/16 :goto_1f

    .line 573
    .line 574
    :cond_20
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 578
    .line 579
    .line 580
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 581
    .line 582
    .line 583
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 587
    .line 588
    .line 589
    move-result-object v4

    .line 590
    if-eqz v4, :cond_21

    .line 591
    .line 592
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/TaskItem;->getButtonCopy()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v4

    .line 596
    goto :goto_19

    .line 597
    :cond_21
    move-object v4, v2

    .line 598
    :goto_19
    if-nez v4, :cond_22

    .line 599
    .line 600
    move-object v4, v3

    .line 601
    :cond_22
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 602
    .line 603
    .line 604
    move-result-object v5

    .line 605
    if-eqz v5, :cond_23

    .line 606
    .line 607
    invoke-virtual {v5}, Lcom/opay/team/newhome/reward/TaskItem;->getRewardIconSmall()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    :cond_23
    if-nez v2, :cond_24

    .line 612
    .line 613
    goto :goto_1a

    .line 614
    :cond_24
    move-object v3, v2

    .line 615
    :goto_1a
    invoke-virtual {p0, v1, v6, v4, v3}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->m(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    sget v1, Lteam/opay/pay/R$drawable;->osdk_e0f7ee_r24:I

    .line 619
    .line 620
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 621
    .line 622
    .line 623
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    invoke-static {v7}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 627
    .line 628
    .line 629
    goto/16 :goto_1f

    .line 630
    .line 631
    :cond_25
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 632
    .line 633
    .line 634
    invoke-static {v7}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 635
    .line 636
    .line 637
    iget-object v1, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->a:Landroid/content/Context;

    .line 638
    .line 639
    invoke-static {v1}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 644
    .line 645
    .line 646
    move-result-object v4

    .line 647
    if-eqz v4, :cond_26

    .line 648
    .line 649
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/TaskItem;->getRewardIconSmall()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v4

    .line 653
    goto :goto_1b

    .line 654
    :cond_26
    move-object v4, v2

    .line 655
    :goto_1b
    if-nez v4, :cond_27

    .line 656
    .line 657
    move-object v4, v3

    .line 658
    :cond_27
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    invoke-virtual {v1, v6}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 663
    .line 664
    .line 665
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    if-eqz v1, :cond_28

    .line 670
    .line 671
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/TaskItem;->getButtonCopy()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    :cond_28
    if-nez v2, :cond_29

    .line 676
    .line 677
    goto :goto_1c

    .line 678
    :cond_29
    move-object v3, v2

    .line 679
    :goto_1c
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    .line 681
    .line 682
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 683
    .line 684
    .line 685
    goto :goto_1f

    .line 686
    :cond_2a
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    invoke-static {v7}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 690
    .line 691
    .line 692
    iget-object v1, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->a:Landroid/content/Context;

    .line 693
    .line 694
    invoke-static {v1}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 699
    .line 700
    .line 701
    move-result-object v4

    .line 702
    if-eqz v4, :cond_2b

    .line 703
    .line 704
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/TaskItem;->getRewardIconSmall()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v4

    .line 708
    goto :goto_1d

    .line 709
    :cond_2b
    move-object v4, v2

    .line 710
    :goto_1d
    if-nez v4, :cond_2c

    .line 711
    .line 712
    move-object v4, v3

    .line 713
    :cond_2c
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    invoke-virtual {v1, v6}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 718
    .line 719
    .line 720
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    if-eqz v1, :cond_2d

    .line 725
    .line 726
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/TaskItem;->getButtonCopy()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v2

    .line 730
    :cond_2d
    if-nez v2, :cond_2e

    .line 731
    .line 732
    goto :goto_1e

    .line 733
    :cond_2e
    move-object v3, v2

    .line 734
    :goto_1e
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    .line 736
    .line 737
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 738
    .line 739
    .line 740
    :goto_1f
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->p(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsBean;)V

    .line 741
    .line 742
    .line 743
    return-void
.end method

.method public final p(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsBean;)V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$id;->task_progress_bar:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/widget/ProgressBar;

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/TaskItem;->getLoading()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p2, 0x0

    .line 28
    :goto_0
    invoke-static {p1, p2}, Lteam/opay/core/android/ViewKt;->w(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final q(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsBean;)V
    .locals 2

    .line 1
    sget v0, Lteam/opay/pay/R$id;->title_bonus:I

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 12
    .line 13
    .line 14
    sget v0, Lteam/opay/pay/R$id;->title_bonus_value:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->b()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->b()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
.end method

.method public final r(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsBean;)V
    .locals 8

    .line 1
    sget-object v0, Lbd9;->a:Lbd9;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->f()Lcom/opay/team/newhome/reward/VoucherItem;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v6, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/VoucherItem;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v6

    .line 16
    :goto_0
    const-string v7, ""

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    move-object v1, v7

    .line 21
    :cond_1
    sget-object v2, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 22
    .line 23
    const/4 v4, 0x4

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static/range {v0 .. v5}, Lbd9;->o(Lbd9;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget v1, Lteam/opay/pay/R$id;->voucher_amount:I

    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 33
    .line 34
    .line 35
    sget v0, Lteam/opay/pay/R$id;->voucher_desc:I

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->f()Lcom/opay/team/newhome/reward/VoucherItem;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/VoucherItem;->e()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v1, v6

    .line 49
    :goto_1
    if-nez v1, :cond_3

    .line 50
    .line 51
    move-object v1, v7

    .line 52
    :cond_3
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 57
    .line 58
    .line 59
    sget v0, Lteam/opay/pay/R$id;->voucher_user_now:I

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/widget/TextView;

    .line 66
    .line 67
    sget v1, Lteam/opay/pay/R$id;->voucher_unenable:I

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->f()Lcom/opay/team/newhome/reward/VoucherItem;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/VoucherItem;->f()Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    :cond_4
    if-nez v6, :cond_5

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const/4 v2, 0x1

    .line 93
    if-ne v1, v2, :cond_7

    .line 94
    .line 95
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->f()Lcom/opay/team/newhome/reward/VoucherItem;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/VoucherItem;->b()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-nez p1, :cond_6

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    move-object v7, p1

    .line 122
    :goto_2
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    new-instance p1, Lmxc;

    .line 126
    .line 127
    invoke-direct {p1, p0, p2}, Lmxc;-><init>(Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;Lcom/opay/team/newhome/reward/RewardsBean;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v0, p1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 131
    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_7
    :goto_3
    if-nez v6, :cond_8

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    const/4 v1, 0x3

    .line 142
    if-ne p2, v1, :cond_9

    .line 143
    .line 144
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    iget-object p2, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->a:Landroid/content/Context;

    .line 157
    .line 158
    sget v0, Lteam/opay/pay/R$string;->omain_expired:I

    .line 159
    .line 160
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_9
    :goto_4
    if-nez v6, :cond_a

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    const/4 v1, 0x2

    .line 176
    if-ne p2, v1, :cond_b

    .line 177
    .line 178
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 182
    .line 183
    .line 184
    const/4 p2, 0x0

    .line 185
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 186
    .line 187
    .line 188
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->a:Landroid/content/Context;

    .line 195
    .line 196
    sget p2, Lteam/opay/pay/R$string;->omain_used:I

    .line 197
    .line 198
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    :cond_b
    :goto_5
    return-void
.end method

.method public t(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsBean;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/RewardsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->getItemType()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->q(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsBean;)V

    .line 29
    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x2

    .line 40
    if-ne v1, v2, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->r(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsBean;)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x3

    .line 54
    if-ne v0, v1, :cond_6

    .line 55
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->n(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsBean;)V

    .line 57
    .line 58
    .line 59
    :cond_6
    :goto_3
    return-void
.end method

.method public u(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsBean;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/RewardsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "Lcom/opay/team/newhome/reward/RewardsBean;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "payloads"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->getItemType()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p3, 0x0

    .line 23
    :goto_0
    if-nez p3, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    const/4 v0, 0x3

    .line 31
    if-ne p3, v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->p(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsBean;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    :goto_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 38
    .line 39
    .line 40
    :goto_2
    return-void
.end method

.method public final v(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/RewardsBean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final w(ZLcom/opay/team/newhome/reward/RewardsBean;)V
    .locals 1
    .param p2    # Lcom/opay/team/newhome/reward/RewardsBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/opay/team/newhome/reward/TaskItem;->setLoading(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr p1, v0

    .line 28
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
