.class public final Lteam/opay/pay/home/security/SettingsConfigAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SettingsConfigAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/pay/home/security/SettingsItemData;",
        "Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J%\u0010\t\u001a\u00020\u00082\n\u0010\u0006\u001a\u00060\u0003R\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u00082\u0010\u0010\u000c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/pay/home/security/SettingsConfigAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/pay/home/security/SettingsItemData;",
        "Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;",
        "<init>",
        "()V",
        "helper",
        "item",
        "",
        "l",
        "(Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;Lteam/opay/pay/home/security/SettingsItemData;)V",
        "",
        "list",
        "setNewData",
        "(Ljava/util/List;)V",
        "SettingsConfigViewHolder",
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
    sget v0, Lteam/opay/pay/R$layout;->security_entrance_list_item_view:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic k(Lteam/opay/pay/home/security/SettingsConfigAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;

    .line 2
    .line 3
    check-cast p2, Lteam/opay/pay/home/security/SettingsItemData;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/security/SettingsConfigAdapter;->l(Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;Lteam/opay/pay/home/security/SettingsItemData;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public l(Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;Lteam/opay/pay/home/security/SettingsItemData;)V
    .locals 1
    .param p1    # Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/home/security/SettingsItemData;
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
    invoke-virtual {p1, p2}, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a(Lteam/opay/pay/home/security/SettingsItemData;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/home/security/SettingsItemData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lteam/opay/pay/home/security/DiffCallback;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lteam/opay/pay/home/security/DiffCallback;-><init>(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewDiffData(Lcom/chad/library/adapter/base/diff/BaseQuickDiffCallback;Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method
