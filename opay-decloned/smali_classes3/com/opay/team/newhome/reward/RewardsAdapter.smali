.class public final Lcom/opay/team/newhome/reward/RewardsAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "RewardsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/opay/team/newhome/reward/RewardsModule;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J!\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0014J\u001f\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0014J\u001f\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0014J\u001f\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0014J\u001f\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0014J\u001b\u0010\"\u001a\u00020\u000e2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f\u00a2\u0006\u0004\u0008\"\u0010#J\u001d\u0010\'\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u00082\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(J\u001d\u0010*\u001a\u00020\u000e2\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010\u001f\u00a2\u0006\u0004\u0008*\u0010#J!\u0010+\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008+\u0010\u0014J/\u0010/\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00022\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020-0,H\u0014\u00a2\u0006\u0004\u0008/\u00100R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u0010\'R0\u0010=\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u000e\u0018\u0001068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R0\u0010A\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u000e\u0018\u0001068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u00108\u001a\u0004\u0008?\u0010:\"\u0004\u0008@\u0010<R0\u0010E\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u000e\u0018\u0001068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u00108\u001a\u0004\u0008C\u0010:\"\u0004\u0008D\u0010<R*\u0010M\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010F8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR0\u0010R\u001a\u0010\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020\u000e\u0018\u0001068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u00108\u001a\u0004\u0008P\u0010:\"\u0004\u0008Q\u0010<R\u001b\u0010X\u001a\u00020S8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010WR\u001b\u0010\\\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Y\u0010U\u001a\u0004\u0008Z\u0010[R\u001b\u0010_\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008]\u0010U\u001a\u0004\u0008^\u0010[R\u001b\u0010d\u001a\u00020`8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008a\u0010U\u001a\u0004\u0008b\u0010c\u00a8\u0006e"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/RewardsAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lcom/opay/team/newhome/reward/RewardsModule;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Landroid/content/Context;",
        "context",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "",
        "fromHome",
        "<init>",
        "(Landroid/content/Context;Landroidx/fragment/app/Fragment;Z)V",
        "Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;",
        "taskAdapter",
        "",
        "U",
        "(Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;)V",
        "helper",
        "rewardsModule",
        "x",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V",
        "Lcom/opay/team/newhome/reward/RewardsTaskModule;",
        "taskGroupModule",
        "F",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsTaskModule;)V",
        "item",
        "w",
        "B",
        "y",
        "A",
        "C",
        "",
        "Lteam/opay/odialog/net/ADListItem;",
        "list",
        "W",
        "(Ljava/util/List;)V",
        "loading",
        "Lcom/opay/team/newhome/reward/RewardsBean;",
        "bean",
        "Z",
        "(ZLcom/opay/team/newhome/reward/RewardsBean;)V",
        "Lteam/opay/odialog/net/AdDataItem;",
        "Y",
        "H",
        "",
        "",
        "payloads",
        "I",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;Ljava/util/List;)V",
        "a",
        "Landroid/content/Context;",
        "b",
        "Landroidx/fragment/app/Fragment;",
        "c",
        "Lkotlin/Function1;",
        "d",
        "Lkotlin/jvm/functions/Function1;",
        "getOnTaskGroupViewAllClick",
        "()Lkotlin/jvm/functions/Function1;",
        "T",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onTaskGroupViewAllClick",
        "e",
        "getOnTaskGroupItemClick",
        "S",
        "onTaskGroupItemClick",
        "f",
        "getOnTaskGroupButtonClick",
        "R",
        "onTaskGroupButtonClick",
        "Lkotlin/Function0;",
        "g",
        "Lkotlin/jvm/functions/Function0;",
        "getOnFlashSaleRuleClick",
        "()Lkotlin/jvm/functions/Function0;",
        "P",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onFlashSaleRuleClick",
        "Lcom/opay/team/newhome/reward/GetVoucherItem;",
        "h",
        "getOnGetCouponClick",
        "Q",
        "onGetCouponClick",
        "Lcom/opay/team/newhome/reward/RewardsActivityAdapter;",
        "i",
        "Lid8;",
        "J",
        "()Lcom/opay/team/newhome/reward/RewardsActivityAdapter;",
        "activityAdapter",
        "j",
        "L",
        "()Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;",
        "rewardsNewTaskAdapter",
        "k",
        "K",
        "rewardsDailyTaskAdapter",
        "Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;",
        "l",
        "M",
        "()Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;",
        "voucherVerticalAdapter",
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

.field public final b:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Z

.field public d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/RewardsTaskModule;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lkotlin/jvm/functions/Function1;
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

.field public f:Lkotlin/jvm/functions/Function1;
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

.field public g:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/GetVoucherItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 3
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->b:Landroidx/fragment/app/Fragment;

    .line 5
    iput-boolean p3, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->c:Z

    .line 6
    new-instance p1, Lctc;

    invoke-direct {p1}, Lctc;-><init>()V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->i:Lid8;

    .line 7
    new-instance p1, Ldtc;

    invoke-direct {p1, p0}, Ldtc;-><init>(Lcom/opay/team/newhome/reward/RewardsAdapter;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->j:Lid8;

    .line 8
    new-instance p1, Letc;

    invoke-direct {p1, p0}, Letc;-><init>(Lcom/opay/team/newhome/reward/RewardsAdapter;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->k:Lid8;

    .line 9
    new-instance p1, Lftc;

    invoke-direct {p1, p0}, Lftc;-><init>(Lcom/opay/team/newhome/reward/RewardsAdapter;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->l:Lid8;

    .line 10
    sget p1, Lteam/opay/pay/R$layout;->omain_rewards_item_task_group:I

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p2, 0x3

    .line 11
    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p1, 0xa

    .line 12
    sget p2, Lteam/opay/pay/R$layout;->omain_rewards_item_ad:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x7

    .line 13
    sget p2, Lteam/opay/pay/R$layout;->omain_rewards_place_hold_title:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p1, 0x8

    .line 14
    sget p2, Lteam/opay/pay/R$layout;->omain_rewards_place_hold_item:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x1

    .line 15
    sget p2, Lteam/opay/pay/R$layout;->osdk_rewards_item_activity_type:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p1, 0x9

    .line 16
    sget p2, Lteam/opay/pay/R$layout;->osdk_rewards_item_get_voucher_type:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p1, 0xc

    .line 17
    sget p2, Lteam/opay/pay/R$layout;->osdk_rewards_item_voucher_vertical_type:I

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x4

    .line 19
    sget p2, Lteam/opay/pay/R$layout;->osdk_item_rewards_flash_sale:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p1, 0xb

    .line 20
    sget p2, Lteam/opay/pay/R$layout;->osdk_item_rewards_announcement:I

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/opay/team/newhome/reward/RewardsAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public static final D(Lcom/opay/team/newhome/reward/RewardsAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->g:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final E(Lcom/opay/team/newhome/reward/RewardsModuleData;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsModuleData;->f()Lcom/opay/team/newhome/reward/FlashSaleModule;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/FlashSaleModule;->getServiceTypes()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/String;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public static final G(Lcom/opay/team/newhome/reward/RewardsAdapter;Lcom/opay/team/newhome/reward/RewardsTaskModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->d:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final N(Lcom/opay/team/newhome/reward/RewardsAdapter;)Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;
    .locals 5

    .line 1
    new-instance v0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;-><init>(Landroid/content/Context;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->U(Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final O(Lcom/opay/team/newhome/reward/RewardsAdapter;)Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;
    .locals 5

    .line 1
    new-instance v0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;-><init>(Landroid/content/Context;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->U(Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final V(Lcom/opay/team/newhome/reward/RewardsAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    instance-of p2, p1, Lcom/opay/team/newhome/reward/RewardsBean;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->e:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static final X(Lcom/opay/team/newhome/reward/RewardsAdapter;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static final a0(Lcom/opay/team/newhome/reward/RewardsAdapter;)Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;
    .locals 3

    .line 1
    new-instance v0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->a:Landroid/content/Context;

    .line 4
    .line 5
    sget v2, Lteam/opay/pay/R$color;->color_f8f8fb:I

    .line 6
    .line 7
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lhtc;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lhtc;-><init>(Lcom/opay/team/newhome/reward/RewardsAdapter;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;->p(Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static final b0(Lcom/opay/team/newhome/reward/RewardsAdapter;Lcom/opay/team/newhome/reward/GetVoucherItem;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "item"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getCouponStatus()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->h:Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    if-eqz p0, :cond_5

    .line 23
    .line 24
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ne v1, v0, :cond_4

    .line 36
    .line 37
    iget-object p0, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->a:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getVoucherUrl()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    const-string v1, ""

    .line 46
    .line 47
    :cond_3
    invoke-static {p0, v1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    :goto_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 52
    .line 53
    .line 54
    :cond_5
    :goto_2
    sget-object p0, Lx7b;->a:Lx7b;

    .line 55
    .line 56
    const-string v1, "voucher_batchId"

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getVoucherBatchId()Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "Voucher_status"

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getCouponStatus()Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 v2, 0x2

    .line 77
    new-array v2, v2, [Lkotlin/Pair;

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    aput-object v1, v2, v3

    .line 81
    .line 82
    aput-object p1, v2, v0

    .line 83
    .line 84
    const-string p1, "rewards_native_page_Voucher_Collection_Voucher_List_click"

    .line 85
    .line 86
    invoke-virtual {p0, p1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 87
    .line 88
    .line 89
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p0
.end method

.method public static synthetic k(Lcom/opay/team/newhome/reward/RewardsAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->X(Lcom/opay/team/newhome/reward/RewardsAdapter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lcom/opay/team/newhome/reward/RewardsModuleData;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsAdapter;->E(Lcom/opay/team/newhome/reward/RewardsModuleData;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m()Lcom/opay/team/newhome/reward/RewardsActivityAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/reward/RewardsAdapter;->v()Lcom/opay/team/newhome/reward/RewardsActivityAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic n(Lcom/opay/team/newhome/reward/RewardsAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/opay/team/newhome/reward/RewardsAdapter;->V(Lcom/opay/team/newhome/reward/RewardsAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o(Lcom/opay/team/newhome/reward/RewardsAdapter;)Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->O(Lcom/opay/team/newhome/reward/RewardsAdapter;)Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lcom/opay/team/newhome/reward/RewardsAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->D(Lcom/opay/team/newhome/reward/RewardsAdapter;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q(Lcom/opay/team/newhome/reward/RewardsAdapter;Lcom/opay/team/newhome/reward/GetVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/reward/RewardsAdapter;->b0(Lcom/opay/team/newhome/reward/RewardsAdapter;Lcom/opay/team/newhome/reward/GetVoucherItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r(Lcom/opay/team/newhome/reward/RewardsAdapter;Lcom/opay/team/newhome/reward/RewardsTaskModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/reward/RewardsAdapter;->G(Lcom/opay/team/newhome/reward/RewardsAdapter;Lcom/opay/team/newhome/reward/RewardsTaskModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lcom/opay/team/newhome/reward/RewardsModuleData;Lcom/opay/team/newhome/reward/RewardsAdapter;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/opay/team/newhome/reward/RewardsAdapter;->z(Lcom/opay/team/newhome/reward/RewardsModuleData;Lcom/opay/team/newhome/reward/RewardsAdapter;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic t(Lcom/opay/team/newhome/reward/RewardsAdapter;)Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->N(Lcom/opay/team/newhome/reward/RewardsAdapter;)Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lcom/opay/team/newhome/reward/RewardsAdapter;)Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->a0(Lcom/opay/team/newhome/reward/RewardsAdapter;)Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final v()Lcom/opay/team/newhome/reward/RewardsActivityAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/opay/team/newhome/reward/RewardsActivityAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/opay/team/newhome/reward/RewardsActivityAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final z(Lcom/opay/team/newhome/reward/RewardsModuleData;Lcom/opay/team/newhome/reward/RewardsAdapter;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsModuleData;->c()Lcom/opay/team/newhome/reward/CouponData;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/CouponData;->a()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    invoke-static {p0, p3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/String;

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    const-string v0, "Hot"

    .line 27
    .line 28
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    sget p0, Lteam/opay/pay/R$layout;->osdk_tab_hot_view:I

    .line 35
    .line 36
    invoke-virtual {p2, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 37
    .line 38
    .line 39
    if-nez p3, :cond_0

    .line 40
    .line 41
    iget-object p0, p1, Lcom/opay/team/newhome/reward/RewardsAdapter;->a:Landroid/content/Context;

    .line 42
    .line 43
    sget p1, Lteam/opay/pay/R$color;->black_85:I

    .line 44
    .line 45
    invoke-static {p0, p1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p1, Lcom/opay/team/newhome/reward/RewardsAdapter;->a:Landroid/content/Context;

    .line 51
    .line 52
    sget p1, Lteam/opay/pay/R$color;->black_65:I

    .line 53
    .line 54
    invoke-static {p0, p1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    sget p2, Lteam/opay/pay/R$id;->hotTextView:I

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {p2, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final A(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V
    .locals 15

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/reward/RewardsModule;->c()Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget v2, Lteam/opay/pay/R$id;->voucherVerticalTitle:I

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsModuleData;->c()Lcom/opay/team/newhome/reward/CouponData;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/opay/team/newhome/reward/CouponData;->c()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v3, v4

    .line 31
    :goto_0
    const-string v5, ""

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    move-object v3, v5

    .line 36
    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    sget v2, Lteam/opay/pay/R$id;->voucherVerticalTitleIcon:I

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroid/widget/ImageView;

    .line 46
    .line 47
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsModuleData;->c()Lcom/opay/team/newhome/reward/CouponData;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/CouponData;->b()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move-object v1, v4

    .line 62
    :goto_1
    if-nez v1, :cond_4

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    move-object v5, v1

    .line 66
    :goto_2
    const/4 v1, 0x2

    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-static {v2, v5, v3, v1, v4}, Lkzf;->k(Landroid/widget/ImageView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget v1, Lteam/opay/pay/R$id;->voucherVerticalList:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->M()Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-lez v1, :cond_5

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 105
    .line 106
    .line 107
    :cond_5
    new-instance v1, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 108
    .line 109
    const/4 v2, 0x4

    .line 110
    invoke-static {v2}, Ljmf;->d(I)I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    const/16 v13, 0x7c

    .line 115
    .line 116
    const/4 v14, 0x0

    .line 117
    const/4 v6, 0x0

    .line 118
    const/4 v8, 0x0

    .line 119
    const/4 v9, 0x0

    .line 120
    const/4 v10, 0x0

    .line 121
    const/4 v11, 0x0

    .line 122
    const/4 v12, 0x0

    .line 123
    move-object v5, v1

    .line 124
    invoke-direct/range {v5 .. v14}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->M()Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sget-object v1, Lnyc;->a:Lnyc;

    .line 135
    .line 136
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/reward/RewardsModule;->c()Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    if-eqz v2, :cond_6

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/RewardsModuleData;->c()Lcom/opay/team/newhome/reward/CouponData;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    if-eqz v2, :cond_6

    .line 147
    .line 148
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/CouponData;->d()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    if-eqz v2, :cond_6

    .line 153
    .line 154
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    move-object v4, v2

    .line 159
    check-cast v4, Lcom/opay/team/newhome/reward/VoucherInfo;

    .line 160
    .line 161
    :cond_6
    invoke-virtual {v1, v4}, Lnyc;->g(Lcom/opay/team/newhome/reward/VoucherInfo;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public final B(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModule;->c()Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModuleData;->e()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-gtz v0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModuleData;->e()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :cond_3
    const/4 v0, 0x4

    .line 35
    if-le v1, v0, :cond_4

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    :cond_4
    sget v0, Lteam/opay/pay/R$id;->activityRecyclerView:I

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->J()Lcom/opay/team/newhome/reward/RewardsActivityAdapter;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->J()Lcom/opay/team/newhome/reward/RewardsActivityAdapter;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModuleData;->e()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    if-nez p2, :cond_5

    .line 74
    .line 75
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    :cond_5
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final C(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModule;->c()Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v0, Lteam/opay/pay/R$id;->flashTitle:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModuleData;->f()Lcom/opay/team/newhome/reward/FlashSaleModule;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/FlashSaleModule;->getWidgetInfo()Lcom/opay/team/newhome/reward/FlashWidgetInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/FlashWidgetInfo;->getTemplateTitle()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v1, v2

    .line 35
    :goto_0
    const-string v3, ""

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    move-object v1, v3

    .line 40
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    sget v0, Lteam/opay/pay/R$id;->flashTitleIcon:I

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/ImageView;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModuleData;->f()Lcom/opay/team/newhome/reward/FlashSaleModule;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/FlashSaleModule;->getWidgetInfo()Lcom/opay/team/newhome/reward/FlashWidgetInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/FlashWidgetInfo;->getTemplateIcon()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move-object v1, v2

    .line 72
    :goto_1
    if-nez v1, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move-object v3, v1

    .line 76
    :goto_2
    const/4 v1, 0x2

    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-static {v0, v3, v4, v1, v2}, Lkzf;->k(Landroid/widget/ImageView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    sget v0, Lteam/opay/pay/R$id;->flashRules:I

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lzsc;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Lzsc;-><init>(Lcom/opay/team/newhome/reward/RewardsAdapter;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 98
    .line 99
    .line 100
    sget v0, Lteam/opay/pay/R$id;->flashTabLayout:I

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 107
    .line 108
    sget v1, Lteam/opay/pay/R$id;->flashViewPager2:I

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 115
    .line 116
    invoke-virtual {p1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 117
    .line 118
    .line 119
    const/4 v1, -0x1

    .line 120
    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 121
    .line 122
    .line 123
    new-instance v1, Lcom/opay/team/newhome/reward/flash/RewardsFlashAdapter;

    .line 124
    .line 125
    iget-object v3, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->b:Landroidx/fragment/app/Fragment;

    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModuleData;->f()Lcom/opay/team/newhome/reward/FlashSaleModule;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    const/4 v6, 0x4

    .line 132
    const/4 v7, 0x0

    .line 133
    const/4 v5, 0x0

    .line 134
    move-object v2, v1

    .line 135
    invoke-direct/range {v2 .. v7}, Lcom/opay/team/newhome/reward/flash/RewardsFlashAdapter;-><init>(Landroidx/fragment/app/Fragment;Lcom/opay/team/newhome/reward/FlashSaleModule;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 139
    .line 140
    .line 141
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 142
    .line 143
    new-instance v2, Latc;

    .line 144
    .line 145
    invoke-direct {v2, p2}, Latc;-><init>(Lcom/opay/team/newhome/reward/RewardsModuleData;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public final F(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsTaskModule;)V
    .locals 11

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget v0, Lteam/opay/pay/R$id;->titleBonus:I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsTaskModule;->f()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, ""

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    move-object v1, v2

    .line 21
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsTaskModule;->f()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v1, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 45
    :goto_1
    xor-int/2addr v1, v4

    .line 46
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 47
    .line 48
    .line 49
    sget v0, Lteam/opay/pay/R$id;->titleBonusValue:I

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsTaskModule;->a()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-nez v1, :cond_4

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    move-object v2, v1

    .line 65
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsTaskModule;->a()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_5

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_5
    const/4 v1, 0x0

    .line 85
    goto :goto_4

    .line 86
    :cond_6
    :goto_3
    const/4 v1, 0x1

    .line 87
    :goto_4
    xor-int/2addr v1, v4

    .line 88
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 89
    .line 90
    .line 91
    sget v0, Lteam/opay/pay/R$id;->taskGroupList:I

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsTaskModule;->e()Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const-string v2, "getContext(...)"

    .line 104
    .line 105
    if-nez v1, :cond_7

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-ne v5, v4, :cond_9

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->L()Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 119
    .line 120
    .line 121
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-direct {v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->L()Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsTaskModule;->b()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v1, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-le v1, v4, :cond_8

    .line 149
    .line 150
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 154
    .line 155
    .line 156
    :cond_8
    new-instance v1, Lcom/opay/team/newhome/reward/tasks/RewardsSheetSpaceItemDecoration;

    .line 157
    .line 158
    const/4 v9, 0x7

    .line 159
    const/4 v10, 0x0

    .line 160
    const/4 v6, 0x0

    .line 161
    const/4 v7, 0x0

    .line 162
    const/4 v8, 0x0

    .line 163
    move-object v5, v1

    .line 164
    invoke-direct/range {v5 .. v10}, Lcom/opay/team/newhome/reward/tasks/RewardsSheetSpaceItemDecoration;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 168
    .line 169
    .line 170
    new-instance v1, Lcom/opay/team/newhome/reward/tasks/RewardsHandleItemDecoration;

    .line 171
    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-direct {v1, v3}, Lcom/opay/team/newhome/reward/tasks/RewardsHandleItemDecoration;-><init>(Landroid/content/Context;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 183
    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_9
    :goto_5
    if-nez v1, :cond_a

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    const/4 v5, 0x2

    .line 194
    if-ne v1, v5, :cond_c

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->K()Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 201
    .line 202
    .line 203
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 204
    .line 205
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-direct {v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->K()Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsTaskModule;->b()Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v1, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-le v1, v4, :cond_b

    .line 231
    .line 232
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 236
    .line 237
    .line 238
    :cond_b
    new-instance v1, Lcom/opay/team/newhome/reward/tasks/RewardsSheetSpaceItemDecoration;

    .line 239
    .line 240
    const/4 v9, 0x7

    .line 241
    const/4 v10, 0x0

    .line 242
    const/4 v6, 0x0

    .line 243
    const/4 v7, 0x0

    .line 244
    const/4 v8, 0x0

    .line 245
    move-object v5, v1

    .line 246
    invoke-direct/range {v5 .. v10}, Lcom/opay/team/newhome/reward/tasks/RewardsSheetSpaceItemDecoration;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 250
    .line 251
    .line 252
    new-instance v1, Lcom/opay/team/newhome/reward/tasks/RewardsHandleItemDecoration;

    .line 253
    .line 254
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-direct {v1, v3}, Lcom/opay/team/newhome/reward/tasks/RewardsHandleItemDecoration;-><init>(Landroid/content/Context;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 265
    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_c
    :goto_6
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 269
    .line 270
    .line 271
    :goto_7
    sget v0, Lteam/opay/pay/R$id;->viewAll:I

    .line 272
    .line 273
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 278
    .line 279
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsTaskModule;->c()Ljava/lang/Boolean;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-static {p1, v0}, Lteam/opay/core/android/ViewKt;->w(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 287
    .line 288
    .line 289
    new-instance v0, Lxsc;

    .line 290
    .line 291
    invoke-direct {v0, p0, p2}, Lxsc;-><init>(Lcom/opay/team/newhome/reward/RewardsAdapter;Lcom/opay/team/newhome/reward/RewardsTaskModule;)V

    .line 292
    .line 293
    .line 294
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 295
    .line 296
    .line 297
    return-void
.end method

.method public H(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V
    .locals 4
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/RewardsModule;
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
    const/4 v0, 0x0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModule;->getItemType()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v0

    .line 19
    :goto_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x2

    .line 27
    if-ne v2, v3, :cond_3

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModule;->c()Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModuleData;->g()Lcom/opay/team/newhome/reward/RewardsTaskModule;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->F(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsTaskModule;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_9

    .line 43
    .line 44
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/4 v3, 0x3

    .line 52
    if-ne v2, v3, :cond_6

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModule;->c()Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-eqz p2, :cond_5

    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModuleData;->d()Lcom/opay/team/newhome/reward/RewardsTaskModule;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->F(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsTaskModule;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_9

    .line 68
    .line 69
    :cond_6
    :goto_2
    if-nez v1, :cond_7

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const/16 v2, 0xa

    .line 77
    .line 78
    if-ne v0, v2, :cond_8

    .line 79
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsAdapter;->w(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V

    .line 81
    .line 82
    .line 83
    goto :goto_9

    .line 84
    :cond_8
    :goto_3
    if-nez v1, :cond_9

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/4 v2, 0x1

    .line 92
    if-ne v0, v2, :cond_a

    .line 93
    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsAdapter;->B(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V

    .line 95
    .line 96
    .line 97
    goto :goto_9

    .line 98
    :cond_a
    :goto_4
    if-nez v1, :cond_b

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    const/16 v2, 0x9

    .line 106
    .line 107
    if-ne v0, v2, :cond_c

    .line 108
    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsAdapter;->y(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V

    .line 110
    .line 111
    .line 112
    goto :goto_9

    .line 113
    :cond_c
    :goto_5
    if-nez v1, :cond_d

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    const/16 v2, 0xc

    .line 121
    .line 122
    if-ne v0, v2, :cond_e

    .line 123
    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsAdapter;->A(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V

    .line 125
    .line 126
    .line 127
    goto :goto_9

    .line 128
    :cond_e
    :goto_6
    if-nez v1, :cond_f

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const/4 v2, 0x4

    .line 136
    if-ne v0, v2, :cond_10

    .line 137
    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsAdapter;->C(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V

    .line 139
    .line 140
    .line 141
    goto :goto_9

    .line 142
    :cond_10
    :goto_7
    if-nez v1, :cond_11

    .line 143
    .line 144
    goto :goto_8

    .line 145
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    const/16 v1, 0xb

    .line 150
    .line 151
    if-ne v0, v1, :cond_12

    .line 152
    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsAdapter;->x(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V

    .line 154
    .line 155
    .line 156
    goto :goto_9

    .line 157
    :cond_12
    :goto_8
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 158
    .line 159
    .line 160
    :goto_9
    return-void
.end method

.method public I(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;Ljava/util/List;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/RewardsModule;
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
            "Lcom/opay/team/newhome/reward/RewardsModule;",
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
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModule;->getItemType()I

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
    move-result v0

    .line 30
    const/16 v1, 0xa

    .line 31
    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsAdapter;->w(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V

    .line 35
    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    :goto_1
    if-nez p3, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    const/16 v0, 0xb

    .line 46
    .line 47
    if-ne p3, v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsAdapter;->x(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    :goto_2
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 54
    .line 55
    .line 56
    :goto_3
    return-void
.end method

.method public final J()Lcom/opay/team/newhome/reward/RewardsActivityAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->i:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/reward/RewardsActivityAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final K()Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final L()Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final M()Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final P(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->g:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final Q(Lkotlin/jvm/functions/Function1;)V
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
            "Lcom/opay/team/newhome/reward/GetVoucherItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->h:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final R(Lkotlin/jvm/functions/Function1;)V
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
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final S(Lkotlin/jvm/functions/Function1;)V
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
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final T(Lkotlin/jvm/functions/Function1;)V
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
            "Lcom/opay/team/newhome/reward/RewardsTaskModule;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->d:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final U(Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;)V
    .locals 1

    .line 1
    new-instance v0, Lgtc;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgtc;-><init>(Lcom/opay/team/newhome/reward/RewardsAdapter;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->f:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->v(Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final W(Ljava/util/List;)V
    .locals 14
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/ADListItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lteam/opay/odialog/net/ADListItem;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "getData(...)"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    move-object v3, v2

    .line 50
    check-cast v3, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/opay/team/newhome/reward/RewardsModule;->d()Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x2

    .line 64
    if-ne v4, v5, :cond_1

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/opay/team/newhome/reward/RewardsModule;->a()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdpCode()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    const/4 v2, 0x0

    .line 82
    :goto_2
    check-cast v2, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 83
    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    add-int/2addr v1, v3

    .line 99
    new-instance v13, Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 100
    .line 101
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    const/16 v11, 0x5f

    .line 106
    .line 107
    const/4 v12, 0x0

    .line 108
    const/4 v4, 0x0

    .line 109
    const/4 v5, 0x0

    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v7, 0x0

    .line 112
    const/4 v8, 0x0

    .line 113
    const/4 v10, 0x0

    .line 114
    move-object v3, v13

    .line 115
    invoke-direct/range {v3 .. v12}, Lcom/opay/team/newhome/reward/RewardsModuleData;-><init>(Ljava/util/List;Lcom/opay/team/newhome/reward/RewardsTaskModule;Lcom/opay/team/newhome/reward/RewardsTaskModule;Lcom/opay/team/newhome/reward/CouponData;Lcom/opay/team/newhome/reward/FlashSaleModule;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v13}, Lcom/opay/team/newhome/reward/RewardsModule;->e(Lcom/opay/team/newhome/reward/RewardsModuleData;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    new-instance v0, Lysc;

    .line 132
    .line 133
    invoke-direct {v0, p0}, Lysc;-><init>(Lcom/opay/team/newhome/reward/RewardsAdapter;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 137
    .line 138
    .line 139
    :cond_5
    return-void
.end method

.method public final Y(Ljava/util/List;)V
    .locals 15
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    const/16 v1, 0xb

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "getData(...)"

    .line 6
    .line 7
    if-eqz p1, :cond_7

    .line 8
    .line 9
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    move-object v6, v5

    .line 39
    check-cast v6, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 40
    .line 41
    invoke-virtual {v6}, Lcom/opay/team/newhome/reward/RewardsModule;->getItemType()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-ne v6, v1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object v5, v2

    .line 49
    :goto_0
    move-object v1, v5

    .line 50
    check-cast v1, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    add-int/2addr v2, v3

    .line 67
    new-instance v3, Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 68
    .line 69
    const/16 v12, 0x3f

    .line 70
    .line 71
    const/4 v13, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x0

    .line 78
    move-object v4, v3

    .line 79
    move-object/from16 v11, p1

    .line 80
    .line 81
    invoke-direct/range {v4 .. v13}, Lcom/opay/team/newhome/reward/RewardsModuleData;-><init>(Ljava/util/List;Lcom/opay/team/newhome/reward/RewardsTaskModule;Lcom/opay/team/newhome/reward/RewardsTaskModule;Lcom/opay/team/newhome/reward/CouponData;Lcom/opay/team/newhome/reward/FlashSaleModule;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v3}, Lcom/opay/team/newhome/reward/RewardsModule;->e(Lcom/opay/team/newhome/reward/RewardsModuleData;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    const/4 v5, 0x1

    .line 108
    if-eqz v4, :cond_5

    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    move-object v6, v4

    .line 115
    check-cast v6, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 116
    .line 117
    invoke-virtual {v6}, Lcom/opay/team/newhome/reward/RewardsModule;->getItemType()I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-ne v6, v5, :cond_4

    .line 122
    .line 123
    move-object v2, v4

    .line 124
    :cond_5
    check-cast v2, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 125
    .line 126
    if-nez v2, :cond_6

    .line 127
    .line 128
    const/4 v1, 0x0

    .line 129
    goto :goto_1

    .line 130
    :cond_6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    add-int/2addr v1, v5

    .line 139
    :goto_1
    new-instance v2, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 140
    .line 141
    new-instance v14, Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 142
    .line 143
    const/16 v12, 0x3f

    .line 144
    .line 145
    const/4 v13, 0x0

    .line 146
    const/4 v5, 0x0

    .line 147
    const/4 v6, 0x0

    .line 148
    const/4 v7, 0x0

    .line 149
    const/4 v8, 0x0

    .line 150
    const/4 v9, 0x0

    .line 151
    const/4 v10, 0x0

    .line 152
    move-object v4, v14

    .line 153
    move-object/from16 v11, p1

    .line 154
    .line 155
    invoke-direct/range {v4 .. v13}, Lcom/opay/team/newhome/reward/RewardsModuleData;-><init>(Ljava/util/List;Lcom/opay/team/newhome/reward/RewardsTaskModule;Lcom/opay/team/newhome/reward/RewardsTaskModule;Lcom/opay/team/newhome/reward/CouponData;Lcom/opay/team/newhome/reward/FlashSaleModule;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 156
    .line 157
    .line 158
    const/16 v11, 0x17

    .line 159
    .line 160
    const/4 v12, 0x0

    .line 161
    const-string v8, "REWARDS_ANNOUNCEMENT"

    .line 162
    .line 163
    move-object v4, v2

    .line 164
    move-object v10, v14

    .line 165
    invoke-direct/range {v4 .. v12}, Lcom/opay/team/newhome/reward/RewardsModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsModuleData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-nez v3, :cond_a

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    add-int/2addr v1, v2

    .line 193
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-eqz v4, :cond_9

    .line 213
    .line 214
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    move-object v5, v4

    .line 219
    check-cast v5, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 220
    .line 221
    invoke-virtual {v5}, Lcom/opay/team/newhome/reward/RewardsModule;->getItemType()I

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    if-ne v5, v1, :cond_8

    .line 226
    .line 227
    move-object v2, v4

    .line 228
    :cond_9
    check-cast v2, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 229
    .line 230
    if-eqz v2, :cond_a

    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    add-int/2addr v1, v2

    .line 245
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 246
    .line 247
    .line 248
    :cond_a
    :goto_3
    return-void
.end method

.method public final Z(ZLcom/opay/team/newhome/reward/RewardsBean;)V
    .locals 2
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
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->e()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->K()Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->w(ZLcom/opay/team/newhome/reward/RewardsBean;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsAdapter;->L()Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1, p2}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;->w(ZLcom/opay/team/newhome/reward/RewardsBean;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsAdapter;->H(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic convertPayloads(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/reward/RewardsAdapter;->I(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final w(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModule;->c()Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_4

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModuleData;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    sget v0, Lteam/opay/pay/R$id;->adList:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lteam/opay/pay/ad/OpayAdBannerView;

    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

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
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lteam/opay/odialog/net/AdDataItem;

    .line 46
    .line 47
    const-wide/16 v1, 0x0

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lteam/opay/odialog/net/AdDataItem;->getAdpScale()Ljava/lang/Double;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move-wide v3, v1

    .line 63
    :goto_0
    cmpl-double v0, v3, v1

    .line 64
    .line 65
    if-lez v0, :cond_3

    .line 66
    .line 67
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v0, 0x4

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v2, "h,"

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, ":1"

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Lteam/opay/pay/ad/OpayAdBannerView;->setOpayBannerRatio(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Lteam/opay/pay/ad/OpayAdBannerView;->b(Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_2
    return-void
.end method

.method public final x(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModule;->c()Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModuleData;->b()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    sget v0, Lteam/opay/pay/R$id;->reweardsAV:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lteam/opay/pay/wallet/view/AnnouncementView;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 37
    :goto_2
    xor-int/2addr v0, v1

    .line 38
    invoke-static {p1, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 39
    .line 40
    .line 41
    const-string v0, "Rewards_Act_Notice"

    .line 42
    .line 43
    invoke-virtual {p1, p2, v0}, Lteam/opay/pay/wallet/view/AnnouncementView;->i(Ljava/util/List;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final y(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/RewardsModule;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModule;->c()Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v0, Lteam/opay/pay/R$id;->voucherTitle:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModuleData;->c()Lcom/opay/team/newhome/reward/CouponData;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/CouponData;->c()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v1, v2

    .line 29
    :goto_0
    const-string v3, ""

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    move-object v1, v3

    .line 34
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    sget v0, Lteam/opay/pay/R$id;->voucherTitleIcon:I

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModuleData;->c()Lcom/opay/team/newhome/reward/CouponData;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/CouponData;->b()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move-object v1, v2

    .line 60
    :goto_1
    if-nez v1, :cond_4

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    move-object v3, v1

    .line 64
    :goto_2
    const/4 v1, 0x2

    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-static {v0, v3, v4, v1, v2}, Lkzf;->k(Landroid/widget/ImageView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget v0, Lteam/opay/pay/R$id;->voucherTabLayout:I

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 76
    .line 77
    sget v1, Lteam/opay/pay/R$id;->voucherViewPager2:I

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 84
    .line 85
    invoke-virtual {p1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 86
    .line 87
    .line 88
    const/4 v1, -0x1

    .line 89
    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherAdapter;

    .line 93
    .line 94
    iget-object v3, p0, Lcom/opay/team/newhome/reward/RewardsAdapter;->b:Landroidx/fragment/app/Fragment;

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModuleData;->c()Lcom/opay/team/newhome/reward/CouponData;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    if-eqz v4, :cond_5

    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/CouponData;->a()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    goto :goto_3

    .line 107
    :cond_5
    move-object v4, v2

    .line 108
    :goto_3
    if-nez v4, :cond_6

    .line 109
    .line 110
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    :cond_6
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsModuleData;->c()Lcom/opay/team/newhome/reward/CouponData;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    if-eqz v5, :cond_7

    .line 119
    .line 120
    invoke-virtual {v5}, Lcom/opay/team/newhome/reward/CouponData;->d()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    :cond_7
    if-nez v2, :cond_8

    .line 125
    .line 126
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    :cond_8
    invoke-direct {v1, v3, v4, v2}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherAdapter;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 134
    .line 135
    .line 136
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 137
    .line 138
    new-instance v2, Lbtc;

    .line 139
    .line 140
    invoke-direct {v2, p2, p0}, Lbtc;-><init>(Lcom/opay/team/newhome/reward/RewardsModuleData;Lcom/opay/team/newhome/reward/RewardsAdapter;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 147
    .line 148
    .line 149
    new-instance p1, Lcom/opay/team/newhome/reward/RewardsAdapter$a;

    .line 150
    .line 151
    invoke-direct {p1}, Lcom/opay/team/newhome/reward/RewardsAdapter$a;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method
