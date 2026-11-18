.class public final Lcom/opay/team/newhome/reward/tasks/FinishedTaskAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "FinishedTaskAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/opay/team/newhome/reward/RewardInfoItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/tasks/FinishedTaskAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/opay/team/newhome/reward/RewardInfoItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "helper",
        "item",
        "",
        "k",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardInfoItem;)V",
        "a",
        "Landroid/content/Context;",
        "l",
        "()Landroid/content/Context;",
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


# direct methods
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
    sget v0, Lteam/opay/pay/R$layout;->omain_rewards_task_finished_item:I

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/opay/team/newhome/reward/tasks/FinishedTaskAdapter;->a:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/reward/RewardInfoItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/tasks/FinishedTaskAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardInfoItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardInfoItem;)V
    .locals 9
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/RewardInfoItem;
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
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget v0, Lteam/opay/pay/R$id;->finish_title:I

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardInfoItem;->getTaskName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, ""

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    move-object v1, v2

    .line 20
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 21
    .line 22
    .line 23
    sget v0, Lteam/opay/pay/R$id;->finish_value:I

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardInfoItem;->getAmount()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    move-object v1, v2

    .line 32
    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 33
    .line 34
    .line 35
    sget v1, Lteam/opay/pay/R$id;->finish_icon:I

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    move-object v3, v1

    .line 42
    check-cast v3, Landroid/widget/ImageView;

    .line 43
    .line 44
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardInfoItem;->getTaskIcon()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    move-object v4, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move-object v4, v1

    .line 56
    :goto_0
    sget v5, Lteam/opay/pay/R$mipmap;->omain_ic_task_default:I

    .line 57
    .line 58
    const/4 v7, 0x4

    .line 59
    const/4 v8, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    invoke-static/range {v3 .. v8}, Lme7;->v(Landroid/widget/ImageView;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/opay/team/newhome/reward/tasks/FinishedTaskAdapter;->a:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->c()Ljpc;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardInfoItem;->getRewardIcon()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-nez p2, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    move-object v2, p2

    .line 88
    :goto_1
    invoke-virtual {v0, v2}, Ljpc;->M0(Ljava/lang/String;)Ljpc;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    const/16 v0, 0x18

    .line 93
    .line 94
    invoke-static {v0}, Ljmf;->d(I)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-static {v0}, Ljmf;->d(I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    new-instance v2, Lcom/opay/team/newhome/reward/tasks/FinishedTaskAdapter$a;

    .line 103
    .line 104
    invoke-direct {v2, p1, p0, v1, v0}, Lcom/opay/team/newhome/reward/tasks/FinishedTaskAdapter$a;-><init>(Landroid/widget/TextView;Lcom/opay/team/newhome/reward/tasks/FinishedTaskAdapter;II)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v2}, Ljpc;->C0(Llfe;)Llfe;

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final l()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/tasks/FinishedTaskAdapter;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method
