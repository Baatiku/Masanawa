.class public final Lteam/opay/pay/kyc/task/dialog/NationalSelectAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "KycNationalSelectDialog.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/pay/kyc/task/dialog/NationalVo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0011\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/pay/kyc/task/dialog/NationalSelectAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/pay/kyc/task/dialog/NationalVo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "selectItem",
        "<init>",
        "(Lteam/opay/pay/kyc/task/dialog/NationalVo;)V",
        "helper",
        "item",
        "",
        "k",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/kyc/task/dialog/NationalVo;)V",
        "a",
        "Lteam/opay/pay/kyc/task/dialog/NationalVo;",
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
.field public final a:Lteam/opay/pay/kyc/task/dialog/NationalVo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/task/dialog/NationalVo;)V
    .locals 1
    .param p1    # Lteam/opay/pay/kyc/task/dialog/NationalVo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->kyc_item_national_select:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/task/dialog/NationalSelectAdapter;->a:Lteam/opay/pay/kyc/task/dialog/NationalVo;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/kyc/task/dialog/NationalVo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/dialog/NationalSelectAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/kyc/task/dialog/NationalVo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/kyc/task/dialog/NationalVo;)V
    .locals 10
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/task/dialog/NationalVo;
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
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    sget v0, Lteam/opay/pay/R$id;->item_icon:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Landroid/widget/ImageView;

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2}, Lteam/opay/pay/kyc/task/dialog/NationalVo;->getFlag_4x3()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v2, v9

    .line 30
    :goto_0
    if-nez v2, :cond_1

    .line 31
    .line 32
    move-object v2, v0

    .line 33
    :cond_1
    const/4 v3, 0x4

    .line 34
    invoke-static {v3}, Ljmf;->d(I)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/16 v7, 0x1c

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-static/range {v1 .. v8}, Lme7;->h(Landroid/widget/ImageView;Ljava/lang/String;ILjava/lang/Integer;ZIILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    sget v1, Lteam/opay/pay/R$id;->item_name:I

    .line 48
    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    invoke-virtual {p2}, Lteam/opay/pay/kyc/task/dialog/NationalVo;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move-object v2, v9

    .line 57
    :goto_1
    if-nez v2, :cond_4

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    move-object v0, v2

    .line 61
    :goto_2
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lteam/opay/pay/kyc/task/dialog/NationalSelectAdapter;->a:Lteam/opay/pay/kyc/task/dialog/NationalVo;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    invoke-virtual {v0}, Lteam/opay/pay/kyc/task/dialog/NationalVo;->getCode()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_3

    .line 73
    :cond_5
    move-object v0, v9

    .line 74
    :goto_3
    if-eqz p2, :cond_6

    .line 75
    .line 76
    invoke-virtual {p2}, Lteam/opay/pay/kyc/task/dialog/NationalVo;->getCode()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    :cond_6
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_7

    .line 85
    .line 86
    sget p2, Lteam/opay/pay/R$id;->item_selected:I

    .line 87
    .line 88
    sget v0, Lteam/opay/pay/R$mipmap;->round_check_on_v2:I

    .line 89
    .line 90
    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_7
    sget p2, Lteam/opay/pay/R$id;->item_selected:I

    .line 95
    .line 96
    sget v0, Lteam/opay/pay/R$mipmap;->round_check_off_v2:I

    .line 97
    .line 98
    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 99
    .line 100
    .line 101
    :goto_4
    return-void
.end method
