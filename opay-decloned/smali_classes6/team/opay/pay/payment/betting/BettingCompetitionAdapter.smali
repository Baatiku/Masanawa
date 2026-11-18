.class public final Lteam/opay/pay/payment/betting/BettingCompetitionAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BettingCompetitionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/core/api/graphql/BettingCompetition;",
        "Lteam/opay/pay/payment/betting/BettingCompetitionHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/BettingCompetitionAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/core/api/graphql/BettingCompetition;",
        "Lteam/opay/pay/payment/betting/BettingCompetitionHolder;",
        "<init>",
        "()V",
        "helper",
        "item",
        "",
        "k",
        "(Lteam/opay/pay/payment/betting/BettingCompetitionHolder;Lteam/opay/core/api/graphql/BettingCompetition;)V",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->item_betting_parent_competition:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/payment/betting/BettingCompetitionHolder;

    .line 2
    .line 3
    check-cast p2, Lteam/opay/core/api/graphql/BettingCompetition;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingCompetitionAdapter;->k(Lteam/opay/pay/payment/betting/BettingCompetitionHolder;Lteam/opay/core/api/graphql/BettingCompetition;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public k(Lteam/opay/pay/payment/betting/BettingCompetitionHolder;Lteam/opay/core/api/graphql/BettingCompetition;)V
    .locals 1
    .param p1    # Lteam/opay/pay/payment/betting/BettingCompetitionHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/graphql/BettingCompetition;
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
    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/betting/BettingCompetitionHolder;->k(Lteam/opay/core/api/graphql/BettingCompetition;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
