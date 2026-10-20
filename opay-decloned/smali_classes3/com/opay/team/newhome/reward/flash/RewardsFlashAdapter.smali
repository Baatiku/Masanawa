.class public final Lcom/opay/team/newhome/reward/flash/RewardsFlashAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "RewardsFlashAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/flash/RewardsFlashAdapter;",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "Lcom/opay/team/newhome/reward/FlashSaleModule;",
        "moduleData",
        "",
        "isViewAll",
        "<init>",
        "(Landroidx/fragment/app/Fragment;Lcom/opay/team/newhome/reward/FlashSaleModule;Z)V",
        "",
        "getItemCount",
        "()I",
        "position",
        "Lcom/opay/team/newhome/reward/flash/RewardsFlashFragment;",
        "D",
        "(I)Lcom/opay/team/newhome/reward/flash/RewardsFlashFragment;",
        "j",
        "Lcom/opay/team/newhome/reward/FlashSaleModule;",
        "k",
        "Z",
        "",
        "",
        "l",
        "Ljava/util/List;",
        "serviceTypes",
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
.field public final j:Lcom/opay/team/newhome/reward/FlashSaleModule;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Z

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/opay/team/newhome/reward/FlashSaleModule;Z)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/FlashSaleModule;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashAdapter;->j:Lcom/opay/team/newhome/reward/FlashSaleModule;

    .line 4
    iput-boolean p3, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashAdapter;->k:Z

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/FlashSaleModule;->getServiceTypes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashAdapter;->l:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Lcom/opay/team/newhome/reward/FlashSaleModule;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/opay/team/newhome/reward/flash/RewardsFlashAdapter;-><init>(Landroidx/fragment/app/Fragment;Lcom/opay/team/newhome/reward/FlashSaleModule;Z)V

    return-void
.end method


# virtual methods
.method public D(I)Lcom/opay/team/newhome/reward/flash/RewardsFlashFragment;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashAdapter;->l:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    :cond_0
    move-object v2, v0

    .line 14
    const/4 v0, 0x0

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashAdapter;->j:Lcom/opay/team/newhome/reward/FlashSaleModule;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/FlashSaleModule;->getSessionGroups()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    move-object v3, p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object v3, v0

    .line 28
    :goto_0
    sget-object v1, Lcom/opay/team/newhome/reward/flash/RewardsFlashFragment;->x:Lcom/opay/team/newhome/reward/flash/RewardsFlashFragment$Companion;

    .line 29
    .line 30
    iget-boolean v4, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashAdapter;->k:Z

    .line 31
    .line 32
    const/16 v6, 0x8

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static/range {v1 .. v7}, Lcom/opay/team/newhome/reward/flash/RewardsFlashFragment$Companion;->b(Lcom/opay/team/newhome/reward/flash/RewardsFlashFragment$Companion;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)Lcom/opay/team/newhome/reward/flash/RewardsFlashFragment;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashAdapter;->l:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic l(I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/reward/flash/RewardsFlashAdapter;->D(I)Lcom/opay/team/newhome/reward/flash/RewardsFlashFragment;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
