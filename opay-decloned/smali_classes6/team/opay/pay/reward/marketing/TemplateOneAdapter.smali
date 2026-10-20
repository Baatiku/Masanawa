.class public final Lteam/opay/pay/reward/marketing/TemplateOneAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "TemplateOneAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u001c\u0010\n\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00080\u0007j\u0008\u0012\u0004\u0012\u00020\u0008`\t0\u0006\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R-\u0010\n\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00080\u0007j\u0008\u0012\u0004\u0012\u00020\u0008`\t0\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0019\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/pay/reward/marketing/TemplateOneAdapter;",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "",
        "orderNo",
        "",
        "Ljava/util/ArrayList;",
        "Lteam/opay/pay/reward/marketing/WidgetModule;",
        "Lkotlin/collections/ArrayList;",
        "childItemList",
        "Lteam/opay/pay/reward/marketing/MarketingDataRsp;",
        "rsp",
        "<init>",
        "(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/util/List;Lteam/opay/pay/reward/marketing/MarketingDataRsp;)V",
        "",
        "getItemCount",
        "()I",
        "position",
        "l",
        "(I)Landroidx/fragment/app/Fragment;",
        "j",
        "Ljava/lang/String;",
        "getOrderNo",
        "()Ljava/lang/String;",
        "k",
        "Ljava/util/List;",
        "D",
        "()Ljava/util/List;",
        "Lteam/opay/pay/reward/marketing/MarketingDataRsp;",
        "getRsp",
        "()Lteam/opay/pay/reward/marketing/MarketingDataRsp;",
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
.field public final j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/reward/marketing/WidgetModule;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lteam/opay/pay/reward/marketing/MarketingDataRsp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/util/List;Lteam/opay/pay/reward/marketing/MarketingDataRsp;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/reward/marketing/MarketingDataRsp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/reward/marketing/WidgetModule;",
            ">;>;",
            "Lteam/opay/pay/reward/marketing/MarketingDataRsp;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "orderNo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "childItemList"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lteam/opay/pay/reward/marketing/TemplateOneAdapter;->j:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p3, p0, Lteam/opay/pay/reward/marketing/TemplateOneAdapter;->k:Ljava/util/List;

    .line 22
    .line 23
    iput-object p4, p0, Lteam/opay/pay/reward/marketing/TemplateOneAdapter;->l:Lteam/opay/pay/reward/marketing/MarketingDataRsp;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/reward/marketing/WidgetModule;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/reward/marketing/TemplateOneAdapter;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/reward/marketing/TemplateOneAdapter;->k:Ljava/util/List;

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

.method public l(I)Landroidx/fragment/app/Fragment;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/reward/marketing/TemplateOneItemFragment;->w:Lteam/opay/pay/reward/marketing/TemplateOneItemFragment$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/reward/marketing/TemplateOneAdapter;->k:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v1, p0, Lteam/opay/pay/reward/marketing/TemplateOneAdapter;->j:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p0, Lteam/opay/pay/reward/marketing/TemplateOneAdapter;->l:Lteam/opay/pay/reward/marketing/MarketingDataRsp;

    .line 14
    .line 15
    invoke-virtual {v0, p1, v1, v2}, Lteam/opay/pay/reward/marketing/TemplateOneItemFragment$Companion;->a(Ljava/util/ArrayList;Ljava/lang/String;Lteam/opay/pay/reward/marketing/MarketingDataRsp;)Lteam/opay/pay/reward/marketing/TemplateOneItemFragment;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
