.class public final Lteam/opay/pay/message/view/CustomLoadMoreView;
.super Lcom/chad/library/adapter/base/loadmore/LoadMoreView;
.source "CustomLoadMoreView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0014J\u0008\u0010\u0007\u001a\u00020\u0004H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lteam/opay/pay/message/view/CustomLoadMoreView;",
        "Lcom/chad/library/adapter/base/loadmore/LoadMoreView;",
        "()V",
        "getLayoutId",
        "",
        "getLoadEndViewId",
        "getLoadFailViewId",
        "getLoadingViewId",
        "message_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/loadmore/LoadMoreView;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/message/R$layout;->message_view_load_more:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoadEndViewId()I
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/message/R$id;->load_more_load_end_view:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoadFailViewId()I
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/message/R$id;->load_more_load_fail_view:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoadingViewId()I
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/message/R$id;->load_more_loading_view:I

    .line 2
    .line 3
    return v0
.end method
