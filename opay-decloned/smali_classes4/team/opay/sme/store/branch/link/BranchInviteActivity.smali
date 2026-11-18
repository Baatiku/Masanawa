.class public final Lteam/opay/sme/store/branch/link/BranchInviteActivity;
.super Lkw6;
.source "BranchInviteActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/sme/store/branch/link/BranchInviteActivity;",
        "Lteam/opay/core/common/base/HiltActivity;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "d0",
        "(Landroid/content/Intent;)V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "e0",
        "(Landroidx/fragment/app/Fragment;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "business-sme-store_release"
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
    sget v0, Lteam/opay/sme/store/R$layout;->sme_store_activity_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lkw6;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final d0(Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-static {v1}, Lvd;->c(Landroid/net/Uri;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object v1, v0

    .line 18
    :goto_1
    const-string v2, "opay://business/smeStore/branchInvite"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    const/16 v2, 0x21

    .line 29
    .line 30
    const-string v3, "info"

    .line 31
    .line 32
    if-lt v1, v2, :cond_2

    .line 33
    .line 34
    :try_start_1
    const-class v1, Lteam/opay/sme/store/api/BranchMerchantByCacResponse;

    .line 35
    .line 36
    invoke-static {p1, v3, v1}, Lsqb;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_2
    move-object v0, p1

    .line 41
    goto :goto_3

    .line 42
    :cond_2
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    instance-of v1, p1, Lteam/opay/sme/store/api/BranchMerchantByCacResponse;

    .line 47
    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    move-object p1, v0

    .line 51
    :cond_3
    check-cast p1, Lteam/opay/sme/store/api/BranchMerchantByCacResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catch_0
    :goto_3
    check-cast v0, Lteam/opay/sme/store/api/BranchMerchantByCacResponse;

    .line 55
    .line 56
    sget-object p1, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;->k:Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$Companion;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$Companion;->a(Lteam/opay/sme/store/api/BranchMerchantByCacResponse;)Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Lteam/opay/sme/store/branch/link/BranchInviteActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 63
    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_4
    const-string p1, "opay://business/smeStore/branchAdd"

    .line 67
    .line 68
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_5

    .line 73
    .line 74
    sget-object p1, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->p:Lteam/opay/sme/store/branch/BranchAddAddressFragment$Companion;

    .line 75
    .line 76
    const-string v1, "add"

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Lteam/opay/sme/store/branch/BranchAddAddressFragment$Companion;->a(Lteam/opay/sme/store/api/BranchInfo;Ljava/lang/String;)Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Lteam/opay/sme/store/branch/link/BranchInviteActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_4
    return-void
.end method

.method private final e0(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    sget v0, Lteam/opay/sme/store/R$id;->fragment_container:I

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lre6;->k(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lkw6;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lteam/opay/sme/store/branch/link/BranchInviteActivity;->d0(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
