.class public final Lteam/opay/pay/payment/betting/BettingProviderFragment$b;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "BettingProviderFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/betting/BettingProviderFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "team/opay/pay/payment/betting/BettingProviderFragment$b",
        "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
        "",
        "position",
        "getSpanSize",
        "(I)I",
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
.field public final synthetic a:Lteam/opay/pay/payment/betting/BettingProviderFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/betting/BettingProviderFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingProviderFragment$b;->a:Lteam/opay/pay/payment/betting/BettingProviderFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingProviderFragment$b;->a:Lteam/opay/pay/payment/betting/BettingProviderFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/payment/betting/BettingProviderFragment;->b0(Lteam/opay/pay/payment/betting/BettingProviderFragment;)Lteam/opay/pay/payment/betting/BettingProviderAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x4

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x3

    .line 17
    :goto_0
    return p1
.end method
