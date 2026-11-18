.class public final Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment;
.super Lcom/opay/team/newhome/reward/voucher/Hilt_RewardsVoucherVerticalFragment;
.source "RewardsVoucherVerticalFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000f\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment;",
        "Lcom/opay/team/newhome/reward/voucher/RewardsVoucherFragment;",
        "<init>",
        "()V",
        "",
        "initView",
        "Lcom/opay/team/newhome/reward/VoucherInfo;",
        "it",
        "n0",
        "(Lcom/opay/team/newhome/reward/VoucherInfo;)V",
        "Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;",
        "y",
        "Lid8;",
        "r0",
        "()Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;",
        "voucherVerticalAdapter",
        "z",
        "Companion",
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


# static fields
.field public static final z:Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final y:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment;->z:Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/voucher/Hilt_RewardsVoucherVerticalFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lpzc;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lpzc;-><init>(Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment;->y:Lid8;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic q0(Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment;)Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment;->s0(Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment;)Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final s0(Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment;)Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;
    .locals 3

    .line 1
    new-instance v0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget v2, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 8
    .line 9
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;-><init>(I)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment$voucherVerticalAdapter$2$1$1;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment$voucherVerticalAdapter$2$1$1;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;->p(Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public initView()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherFragment;->k0()Lcom/opay/team/newhome/reward/VoucherInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment;->n0(Lcom/opay/team/newhome/reward/VoucherInfo;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lwh6;

    .line 15
    .line 16
    iget-object v0, v0, Lwh6;->d:Lcom/opay/team/newhome/reward/voucher/RewardsVoucherRecyclerView;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    invoke-static {v1}, Ljmf;->d(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v1}, Ljmf;->d(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v1}, Ljmf;->d(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-static {v0, v2, v4, v3, v1}, Lteam/opay/core/android/ViewKt;->r(Landroid/view/View;IIII)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment;->r0()Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 59
    .line 60
    const/4 v2, 0x4

    .line 61
    invoke-static {v2}, Ljmf;->d(I)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    const/16 v11, 0x7c

    .line 66
    .line 67
    const/4 v12, 0x0

    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v7, 0x0

    .line 70
    const/4 v8, 0x0

    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v10, 0x0

    .line 73
    move-object v3, v1

    .line 74
    invoke-direct/range {v3 .. v12}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public n0(Lcom/opay/team/newhome/reward/VoucherInfo;)V
    .locals 2
    .param p1    # Lcom/opay/team/newhome/reward/VoucherInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment;->r0()Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lnyc;->a:Lnyc;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lnyc;->g(Lcom/opay/team/newhome/reward/VoucherInfo;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final r0()Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherVerticalFragment;->y:Lid8;

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
