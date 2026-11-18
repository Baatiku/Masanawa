.class public final Lteam/opay/pay/payment/data/DataShareActivity;
.super Lteam/opay/pay/payment/data/Hilt_DataShareActivity;
.source "DataShareActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/data/DataShareActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0015\u001a\u0004\u0018\u00010\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/pay/payment/data/DataShareActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "result",
        "",
        "channel",
        "Landroid/content/Intent;",
        "H",
        "(ZLjava/lang/String;)Landroid/content/Intent;",
        "Lteam/opay/pay/payment/data/DataMarketingProduct;",
        "g",
        "Lid8;",
        "D",
        "()Lteam/opay/pay/payment/data/DataMarketingProduct;",
        "product",
        "h",
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
.field public static final h:Lteam/opay/pay/payment/data/DataShareActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/data/DataShareActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/data/DataShareActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/data/DataShareActivity;->h:Lteam/opay/pay/payment/data/DataShareActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->osdk_dialog_fragment_data_share_tip:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/payment/data/Hilt_DataShareActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lb23;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lb23;-><init>(Lteam/opay/pay/payment/data/DataShareActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/payment/data/DataShareActivity;->g:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/payment/data/DataShareActivity;)Lteam/opay/pay/payment/data/DataMarketingProduct;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/data/DataShareActivity;->G(Lteam/opay/pay/payment/data/DataShareActivity;)Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/payment/data/DataShareActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/data/DataShareActivity;->F(Lteam/opay/pay/payment/data/DataShareActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/payment/data/DataShareActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/data/DataShareActivity;->E(Lteam/opay/pay/payment/data/DataShareActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final E(Lteam/opay/pay/payment/data/DataShareActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "channel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/payment/data/DataShareActivity;->H(ZLjava/lang/String;)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, -0x1

    .line 12
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final F(Lteam/opay/pay/payment/data/DataShareActivity;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Ltfb;->a:Ltfb;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v3, "Data_share_sharecancel_click"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v2}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Lteam/opay/pay/payment/data/DataShareActivity;->H(ZLjava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, -0x1

    .line 18
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final G(Lteam/opay/pay/payment/data/DataShareActivity;)Lteam/opay/pay/payment/data/DataMarketingProduct;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string v1, "key_param_data"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p0, v0

    .line 18
    :goto_0
    instance-of v1, p0, Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final D()Lteam/opay/pay/payment/data/DataMarketingProduct;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/data/DataShareActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H(ZLjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "key_param_share_data"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string p1, "key_param_channel_data"

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lteam/opay/pay/payment/data/Hilt_DataShareActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    sget v1, Lteam/opay/pay/R$id;->share_des_contain:I

    .line 7
    .line 8
    sget-object v2, Lteam/opay/pay/payment/data/DataShareDescriptFragment;->k:Lteam/opay/pay/payment/data/DataShareDescriptFragment$Companion;

    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/data/DataShareActivity;->D()Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v2, v3}, Lteam/opay/pay/payment/data/DataShareDescriptFragment$Companion;->a(Lteam/opay/pay/payment/data/DataMarketingProduct;)Lteam/opay/pay/payment/data/DataShareDescriptFragment;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v0, v1, v2}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    sget-object v3, Lteam/opay/pay/cashier/result/ShareDialogFragment;->M:Lteam/opay/pay/cashier/result/ShareDialogFragment$Companion;

    .line 22
    .line 23
    sget v1, Lteam/opay/pay/R$string;->osdk_share_to_data:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v10

    .line 29
    const v21, 0x1e7b0

    .line 30
    .line 31
    .line 32
    const/16 v22, 0x0

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    const-string v6, "https://mkt-sevlte.opayweb.com/seckill/sharePage"

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v11, 0x0

    .line 42
    const/4 v12, 0x0

    .line 43
    const/4 v13, 0x0

    .line 44
    const/4 v14, 0x0

    .line 45
    const/4 v15, 0x1

    .line 46
    const/16 v16, 0x1

    .line 47
    .line 48
    const/16 v17, 0x0

    .line 49
    .line 50
    const/16 v18, 0x0

    .line 51
    .line 52
    const/16 v19, 0x0

    .line 53
    .line 54
    const/16 v20, 0x0

    .line 55
    .line 56
    invoke-static/range {v3 .. v22}, Lteam/opay/pay/cashier/result/ShareDialogFragment$Companion;->c(Lteam/opay/pay/cashier/result/ShareDialogFragment$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/cashier/result/ShareDialogFragment;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v2, Lc23;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Lc23;-><init>(Lteam/opay/pay/payment/data/DataShareActivity;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->r0(Lkotlin/jvm/functions/Function1;)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Ld23;

    .line 69
    .line 70
    invoke-direct {v2, v0}, Ld23;-><init>(Lteam/opay/pay/payment/data/DataShareActivity;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->p0(Lkotlin/jvm/functions/Function0;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Lteam/opay/pay/base/FragmentKt;->F(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 77
    .line 78
    .line 79
    sget-object v1, Ltfb;->a:Ltfb;

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    new-array v2, v2, [Lkotlin/Pair;

    .line 83
    .line 84
    const-string v3, "Data_share_show"

    .line 85
    .line 86
    invoke-virtual {v1, v3, v2}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
