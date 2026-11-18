.class public final Lcom/opay/team/newhome/me/MeBannerKycFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "MeBannerKycFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/me/MeBannerKycFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFragmentV2<",
        "Laka;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u0000 $2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001%B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ#\u0010\u0010\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J1\u0010\u0014\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0016\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0011R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001d\u0010 \u001a\u0004\u0018\u00010\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0019\u001a\u0004\u0008\u001e\u0010\u001fR\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u0019\u001a\u0004\u0008\"\u0010#\u00a8\u0006&"
    }
    d2 = {
        "Lcom/opay/team/newhome/me/MeBannerKycFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Laka;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "userKyc",
        "",
        "frozen",
        "f0",
        "(Ljava/lang/String;Z)V",
        "tips",
        "finish",
        "c0",
        "(Ljava/lang/String;Ljava/lang/String;ZZ)V",
        "Y",
        "Lcom/opay/team/newhome/viewmodel/MeViewModel;",
        "j",
        "Lid8;",
        "getViewModel",
        "()Lcom/opay/team/newhome/viewmodel/MeViewModel;",
        "viewModel",
        "k",
        "W",
        "()Ljava/lang/String;",
        "kycLevel",
        "l",
        "V",
        "()Ljava/lang/Boolean;",
        "m",
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
.field public static final m:Lcom/opay/team/newhome/me/MeBannerKycFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
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
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/me/MeBannerKycFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/me/MeBannerKycFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/me/MeBannerKycFragment;->m:Lcom/opay/team/newhome/me/MeBannerKycFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/opay/team/newhome/me/MeBannerKycFragment$1;->INSTANCE:Lcom/opay/team/newhome/me/MeBannerKycFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/opay/team/newhome/viewmodel/MeViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/opay/team/newhome/me/MeBannerKycFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/opay/team/newhome/me/MeBannerKycFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/opay/team/newhome/me/MeBannerKycFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lcom/opay/team/newhome/me/MeBannerKycFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/opay/team/newhome/me/MeBannerKycFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lcom/opay/team/newhome/me/MeBannerKycFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/opay/team/newhome/me/MeBannerKycFragment;->j:Lid8;

    .line 33
    .line 34
    new-instance v0, Lx19;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lx19;-><init>(Lcom/opay/team/newhome/me/MeBannerKycFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/opay/team/newhome/me/MeBannerKycFragment;->k:Lid8;

    .line 44
    .line 45
    new-instance v0, Ly19;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Ly19;-><init>(Lcom/opay/team/newhome/me/MeBannerKycFragment;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/opay/team/newhome/me/MeBannerKycFragment;->l:Lid8;

    .line 55
    .line 56
    return-void
.end method

.method public static synthetic O(Lcom/opay/team/newhome/me/MeBannerKycFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->Z(Lcom/opay/team/newhome/me/MeBannerKycFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(ZLcom/opay/team/newhome/me/MeBannerKycFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->a0(ZLcom/opay/team/newhome/me/MeBannerKycFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lcom/opay/team/newhome/me/MeBannerKycFragment;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->U(Lcom/opay/team/newhome/me/MeBannerKycFragment;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lcom/opay/team/newhome/me/MeBannerKycFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->e0(Lcom/opay/team/newhome/me/MeBannerKycFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lcom/opay/team/newhome/me/MeBannerKycFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->X(Lcom/opay/team/newhome/me/MeBannerKycFragment;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lcom/opay/team/newhome/me/MeBannerKycFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->b0(Lcom/opay/team/newhome/me/MeBannerKycFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final U(Lcom/opay/team/newhome/me/MeBannerKycFragment;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "key_frozen"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return-object p0
.end method

.method public static final X(Lcom/opay/team/newhome/me/MeBannerKycFragment;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "key_kyc_level"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method public static final Z(Lcom/opay/team/newhome/me/MeBannerKycFragment;)Lkotlin/Unit;
    .locals 5

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "type"

    .line 4
    .line 5
    const-string v2, "03"

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v3, v2, [Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v1, v3, v4

    .line 16
    .line 17
    const-string v1, "me_kyc_upgrade_click"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "otravel://new_kyc/task?scene=UPGRADE"

    .line 27
    .line 28
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v3, "parse(...)"

    .line 33
    .line 34
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0, v1, v2}, Lteam/opay/pay/base/FragmentKt;->n(Landroidx/fragment/app/Fragment;Landroid/content/Context;Landroid/net/Uri;I)Z

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method public static final a0(ZLcom/opay/team/newhome/me/MeBannerKycFragment;)Lkotlin/Unit;
    .locals 22

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "type"

    .line 4
    .line 5
    const-string v2, "03"

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    const-string v1, "me_kyc_upgrade_click"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    sget-object v4, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    new-array v10, v3, [Lkotlin/Pair;

    .line 31
    .line 32
    const/16 v11, 0x1c

    .line 33
    .line 34
    const/4 v12, 0x0

    .line 35
    const-string v6, "otravel://kycform/entrance"

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    invoke-static/range {v4 .. v12}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object v13, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 47
    .line 48
    .line 49
    move-result-object v14

    .line 50
    new-array v0, v3, [Lkotlin/Pair;

    .line 51
    .line 52
    const/16 v20, 0x1c

    .line 53
    .line 54
    const/16 v21, 0x0

    .line 55
    .line 56
    const-string v15, "otravel://new_kyc/task?scene=UPGRADE"

    .line 57
    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    const/16 v17, 0x0

    .line 61
    .line 62
    const/16 v18, 0x0

    .line 63
    .line 64
    move-object/from16 v19, v0

    .line 65
    .line 66
    invoke-static/range {v13 .. v21}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    return-object v0
.end method

.method public static final b0(Lcom/opay/team/newhome/me/MeBannerKycFragment;)Lkotlin/Unit;
    .locals 13

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "type"

    .line 4
    .line 5
    const-string v2, "03"

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    const-string v1, "me_kyc_upgrade_click"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    sget-object v4, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    new-array v10, v3, [Lkotlin/Pair;

    .line 29
    .line 30
    const/16 v11, 0x1c

    .line 31
    .line 32
    const/4 v12, 0x0

    .line 33
    const-string v6, "otravel://kyc_document/entrance?from=me_banner_kyc3"

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v9, 0x0

    .line 38
    invoke-static/range {v4 .. v12}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method

.method public static synthetic d0(Lcom/opay/team/newhome/me/MeBannerKycFragment;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x4

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->c0(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final e0(Lcom/opay/team/newhome/me/MeBannerKycFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "type"

    .line 4
    .line 5
    const-string v2, "01"

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    const-string v1, "me_kyc_upgrade_click"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "requireContext(...)"

    .line 27
    .line 28
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lkmf;->I(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method private final getViewModel()Lcom/opay/team/newhome/viewmodel/MeViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/me/MeBannerKycFragment;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/viewmodel/MeViewModel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final V()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/me/MeBannerKycFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    return-object v0
.end method

.method public final W()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/me/MeBannerKycFragment;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Y(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    const-string p2, "2"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Laka;

    .line 23
    .line 24
    iget-object p1, p1, Laka;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    new-instance p2, Lb29;

    .line 29
    .line 30
    invoke-direct {p2, p0}, Lb29;-><init>(Lcom/opay/team/newhome/me/MeBannerKycFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_1
    const-string v0, "1"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Laka;

    .line 51
    .line 52
    iget-object p1, p1, Laka;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    new-instance v0, La29;

    .line 57
    .line 58
    invoke-direct {v0, p2, p0}, La29;-><init>(ZLcom/opay/team/newhome/me/MeBannerKycFragment;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_2
    const-string p2, "0"

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Laka;

    .line 79
    .line 80
    iget-object p1, p1, Laka;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    new-instance p2, Lz19;

    .line 85
    .line 86
    invoke-direct {p2, p0}, Lz19;-><init>(Lcom/opay/team/newhome/me/MeBannerKycFragment;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_0
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c0(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-eqz p4, :cond_e

    .line 10
    .line 11
    :goto_0
    invoke-direct {p0}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->getViewModel()Lcom/opay/team/newhome/viewmodel/MeViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/opay/team/newhome/viewmodel/MeViewModel;->P()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->getViewModel()Lcom/opay/team/newhome/viewmodel/MeViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lcom/opay/team/newhome/viewmodel/MeViewModel;->a0(Z)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lx7b;->a:Lx7b;

    .line 29
    .line 30
    if-eqz p4, :cond_1

    .line 31
    .line 32
    const-string v2, "01"

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const-string v2, "03"

    .line 36
    .line 37
    :goto_1
    const-string v3, "type"

    .line 38
    .line 39
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x1

    .line 44
    new-array v3, v3, [Lkotlin/Pair;

    .line 45
    .line 46
    aput-object v2, v3, v0

    .line 47
    .line 48
    const-string v0, "me_kyc_upgrade_show"

    .line 49
    .line 50
    invoke-virtual {v1, v0, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    if-eqz p4, :cond_8

    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Laka;

    .line 60
    .line 61
    iget-object p1, p1, Laka;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    sget p2, Lteam/opay/pay/R$drawable;->omain_bg_me_banner_frozen:I

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Laka;

    .line 75
    .line 76
    iget-object p1, p1, Laka;->c:Lcom/google/android/material/button/MaterialButton;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    sget p2, Lteam/opay/pay/R$color;->omain_color_ff2e62:I

    .line 81
    .line 82
    invoke-static {p1, p2}, Lteam/opay/core/android/ViewKt;->n(Lcom/google/android/material/button/MaterialButton;I)V

    .line 83
    .line 84
    .line 85
    :cond_4
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Laka;

    .line 90
    .line 91
    iget-object p1, p1, Laka;->c:Lcom/google/android/material/button/MaterialButton;

    .line 92
    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    sget p3, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 100
    .line 101
    invoke-static {p2, p3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    .line 107
    .line 108
    :cond_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Laka;

    .line 113
    .line 114
    iget-object p1, p1, Laka;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    sget p3, Lteam/opay/pay/R$color;->omain_color_ff2e62:I

    .line 123
    .line 124
    invoke-static {p2, p3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    .line 130
    .line 131
    :cond_6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Laka;

    .line 136
    .line 137
    iget-object p1, p1, Laka;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    if-eqz p1, :cond_7

    .line 140
    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    sget p3, Lteam/opay/pay/R$string;->omain_account_frozen:I

    .line 146
    .line 147
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Laka;

    .line 159
    .line 160
    iget-object p1, p1, Laka;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 161
    .line 162
    if-eqz p1, :cond_f

    .line 163
    .line 164
    new-instance p2, Lw19;

    .line 165
    .line 166
    invoke-direct {p2, p0}, Lw19;-><init>(Lcom/opay/team/newhome/me/MeBannerKycFragment;)V

    .line 167
    .line 168
    .line 169
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_2

    .line 173
    .line 174
    :cond_8
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 175
    .line 176
    .line 177
    move-result-object p4

    .line 178
    check-cast p4, Laka;

    .line 179
    .line 180
    iget-object p4, p4, Laka;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 181
    .line 182
    if-eqz p4, :cond_9

    .line 183
    .line 184
    sget v0, Lteam/opay/pay/R$drawable;->omain_bg_me_banner_kyc:I

    .line 185
    .line 186
    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 187
    .line 188
    .line 189
    :cond_9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 190
    .line 191
    .line 192
    move-result-object p4

    .line 193
    check-cast p4, Laka;

    .line 194
    .line 195
    iget-object p4, p4, Laka;->c:Lcom/google/android/material/button/MaterialButton;

    .line 196
    .line 197
    if-eqz p4, :cond_a

    .line 198
    .line 199
    sget v0, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 200
    .line 201
    invoke-static {p4, v0}, Lteam/opay/core/android/ViewKt;->n(Lcom/google/android/material/button/MaterialButton;I)V

    .line 202
    .line 203
    .line 204
    :cond_a
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 205
    .line 206
    .line 207
    move-result-object p4

    .line 208
    check-cast p4, Laka;

    .line 209
    .line 210
    iget-object p4, p4, Laka;->c:Lcom/google/android/material/button/MaterialButton;

    .line 211
    .line 212
    if-eqz p4, :cond_b

    .line 213
    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    sget v1, Lteam/opay/pay/R$color;->color_00B876:I

    .line 219
    .line 220
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    .line 226
    .line 227
    :cond_b
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 228
    .line 229
    .line 230
    move-result-object p4

    .line 231
    check-cast p4, Laka;

    .line 232
    .line 233
    iget-object p4, p4, Laka;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 234
    .line 235
    if-eqz p4, :cond_c

    .line 236
    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    sget v1, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 242
    .line 243
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    .line 249
    .line 250
    :cond_c
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 251
    .line 252
    .line 253
    move-result-object p4

    .line 254
    check-cast p4, Laka;

    .line 255
    .line 256
    iget-object p4, p4, Laka;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 257
    .line 258
    if-eqz p4, :cond_d

    .line 259
    .line 260
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    :cond_d
    invoke-virtual {p0, p1, p3}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->Y(Ljava/lang/String;Z)V

    .line 264
    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_e
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    check-cast p1, Laka;

    .line 272
    .line 273
    iget-object p1, p1, Laka;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 274
    .line 275
    if-eqz p1, :cond_f

    .line 276
    .line 277
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    check-cast p1, Laka;

    .line 282
    .line 283
    iget-object p1, p1, Laka;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 284
    .line 285
    if-eqz p1, :cond_f

    .line 286
    .line 287
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 288
    .line 289
    .line 290
    :cond_f
    :goto_2
    return-void
.end method

.method public final f0(Ljava/lang/String;Z)V
    .locals 9

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "getString(...)"

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :pswitch_0
    const-string v0, "3"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v1, ""

    .line 27
    .line 28
    const-string v2, ""

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    move-object v0, p0

    .line 32
    move v4, p2

    .line 33
    invoke-static/range {v0 .. v6}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->d0(Lcom/opay/team/newhome/me/MeBannerKycFragment;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :pswitch_1
    const-string v0, "2"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sget v0, Lteam/opay/pay/R$string;->omain_kyc_vip_tip:I

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v7, 0x4

    .line 56
    const/4 v8, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    move-object v2, p0

    .line 59
    move-object v3, p1

    .line 60
    move v6, p2

    .line 61
    invoke-static/range {v2 .. v8}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->d0(Lcom/opay/team/newhome/me/MeBannerKycFragment;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :pswitch_2
    const-string v0, "1"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    sget v0, Lteam/opay/pay/R$string;->omain_kyc_bvn_tip:I

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/4 v7, 0x4

    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    move-object v2, p0

    .line 87
    move-object v3, p1

    .line 88
    move v6, p2

    .line 89
    invoke-static/range {v2 .. v8}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->d0(Lcom/opay/team/newhome/me/MeBannerKycFragment;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :pswitch_3
    const-string v0, "0"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    sget v0, Lteam/opay/pay/R$string;->omain_kyc_0_tip:I

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->c0(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    :goto_0
    const/4 v7, 0x4

    .line 117
    const/4 v8, 0x0

    .line 118
    const-string v3, ""

    .line 119
    .line 120
    const-string v4, ""

    .line 121
    .line 122
    const/4 v5, 0x0

    .line 123
    move-object v2, p0

    .line 124
    move v6, p2

    .line 125
    invoke-static/range {v2 .. v8}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->d0(Lcom/opay/team/newhome/me/MeBannerKycFragment;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    return-void

    .line 129
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->W()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->V()Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p2, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/me/MeBannerKycFragment;->f0(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
