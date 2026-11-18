.class public final Lteam/opay/pay/pin/NoNetWorkActivity;
.super Lteam/opay/pay/android/BaseActivity;
.source "NoNetWorkActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/pin/NoNetWorkActivity$UssdAdapter;,
        Lteam/opay/pay/pin/NoNetWorkActivity$UssdItemData;,
        Lteam/opay/pay/pin/NoNetWorkActivity$UssdMockupDialog;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0003!\"#B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0010\u001a\u00020\t8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0014\u001a\u00020\t8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u000b\u001a\u0004\u0008\u0012\u0010\r\"\u0004\u0008\u0013\u0010\u000fR\u001b\u0010\u001a\u001a\u00020\u00158VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R!\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0017\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/pay/pin/NoNetWorkActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "a",
        "I",
        "getDarkStatusBarColor",
        "()I",
        "setDarkStatusBarColor",
        "(I)V",
        "darkStatusBarColor",
        "b",
        "getLightStatusBarColor",
        "setLightStatusBarColor",
        "lightStatusBarColor",
        "Lqf;",
        "c",
        "Lid8;",
        "H",
        "()Lqf;",
        "viewBinding",
        "",
        "Lteam/opay/pay/pin/NoNetWorkActivity$UssdItemData;",
        "d",
        "G",
        "()Ljava/util/List;",
        "ussdList",
        "UssdAdapter",
        "UssdItemData",
        "UssdMockupDialog",
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
.field public a:I

.field public b:I

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_no_net:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/android/BaseActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    sget v0, Lteam/opay/pay/R$color;->no_dark_1b1b1b:I

    .line 7
    .line 8
    iput v0, p0, Lteam/opay/pay/pin/NoNetWorkActivity;->a:I

    .line 9
    .line 10
    sget v0, Lteam/opay/pay/R$color;->no_dark_f8f8fb:I

    .line 11
    .line 12
    iput v0, p0, Lteam/opay/pay/pin/NoNetWorkActivity;->b:I

    .line 13
    .line 14
    new-instance v0, Lzw9;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lzw9;-><init>(Lteam/opay/pay/pin/NoNetWorkActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lteam/opay/pay/pin/NoNetWorkActivity;->c:Lid8;

    .line 24
    .line 25
    new-instance v0, Lax9;

    .line 26
    .line 27
    invoke-direct {v0}, Lax9;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lteam/opay/pay/pin/NoNetWorkActivity;->d:Lid8;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/pin/NoNetWorkActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/NoNetWorkActivity;->I(Lteam/opay/pay/pin/NoNetWorkActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/pin/NoNetWorkActivity;->M()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic C(Lteam/opay/pay/pin/NoNetWorkActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/pin/NoNetWorkActivity;->L(Lteam/opay/pay/pin/NoNetWorkActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lteam/opay/pay/pin/NoNetWorkActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/NoNetWorkActivity;->K(Lteam/opay/pay/pin/NoNetWorkActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/pin/NoNetWorkActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/NoNetWorkActivity;->J(Lteam/opay/pay/pin/NoNetWorkActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/pay/pin/NoNetWorkActivity;)Lqf;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/NoNetWorkActivity;->N(Lteam/opay/pay/pin/NoNetWorkActivity;)Lqf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final I(Lteam/opay/pay/pin/NoNetWorkActivity;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "Network_errorpage_setting_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 12
    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    const-string v1, "android.settings.SETTINGS"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 31
    .line 32
    invoke-static {p0}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method public static final J(Lteam/opay/pay/pin/NoNetWorkActivity;)Lkotlin/Unit;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/pin/NoNetWorkActivity$UssdMockupDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/pin/NoNetWorkActivity$UssdMockupDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final K(Lteam/opay/pay/pin/NoNetWorkActivity;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "Network_errorpage_topup_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 12
    .line 13
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/16 v2, 0xa

    .line 30
    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "*955*4*"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, "#"

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p0, v0}, Lteam/opay/core/android/ContextKt;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string v0, "*955#"

    .line 60
    .line 61
    invoke-static {p0, v0}, Lteam/opay/core/android/ContextKt;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method

.method public static final L(Lteam/opay/pay/pin/NoNetWorkActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/pin/NoNetWorkActivity;->G()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lteam/opay/pay/pin/NoNetWorkActivity$UssdItemData;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p2, Lx7b;->a:Lx7b;

    .line 14
    .line 15
    const-string p3, "operation"

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/pin/NoNetWorkActivity$UssdItemData;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p3, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    const/4 v0, 0x1

    .line 26
    new-array v0, v0, [Lkotlin/Pair;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    aput-object p3, v0, v1

    .line 30
    .line 31
    const-string p3, "Network_errorpage_checkbalance_click"

    .line 32
    .line 33
    invoke-virtual {p2, p3, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/pay/pin/NoNetWorkActivity$UssdItemData;->d()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p0, p1}, Lteam/opay/core/android/ContextKt;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public static final M()Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Lteam/opay/pay/pin/NoNetWorkActivity$UssdItemData;

    .line 2
    .line 3
    sget v1, Lteam/opay/pay/R$mipmap;->ic_airtime_mtn:I

    .line 4
    .line 5
    sget v2, Lteam/opay/pay/R$string;->osdk_ussd_title_mtn:I

    .line 6
    .line 7
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "*131*4#"

    .line 12
    .line 13
    const-string v4, "mtn"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3, v4}, Lteam/opay/pay/pin/NoNetWorkActivity$UssdItemData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lteam/opay/pay/pin/NoNetWorkActivity$UssdItemData;

    .line 19
    .line 20
    sget v2, Lteam/opay/pay/R$mipmap;->ic_airtime_airtel:I

    .line 21
    .line 22
    sget v3, Lteam/opay/pay/R$string;->osdk_ussd_title_airtel:I

    .line 23
    .line 24
    invoke-static {v3}, Ljmf;->k(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "*140#"

    .line 29
    .line 30
    const-string v5, "airtel"

    .line 31
    .line 32
    invoke-direct {v1, v2, v3, v4, v5}, Lteam/opay/pay/pin/NoNetWorkActivity$UssdItemData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lteam/opay/pay/pin/NoNetWorkActivity$UssdItemData;

    .line 36
    .line 37
    sget v3, Lteam/opay/pay/R$mipmap;->ic_airtime_globacom:I

    .line 38
    .line 39
    sget v4, Lteam/opay/pay/R$string;->osdk_ussd_title_glo:I

    .line 40
    .line 41
    invoke-static {v4}, Ljmf;->k(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const-string v5, "*127*0#"

    .line 46
    .line 47
    const-string v6, "glo"

    .line 48
    .line 49
    invoke-direct {v2, v3, v4, v5, v6}, Lteam/opay/pay/pin/NoNetWorkActivity$UssdItemData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Lteam/opay/pay/pin/NoNetWorkActivity$UssdItemData;

    .line 53
    .line 54
    sget v4, Lteam/opay/pay/R$mipmap;->ic_airtime_9mobile:I

    .line 55
    .line 56
    sget v5, Lteam/opay/pay/R$string;->osdk_ussd_title_9_mobile:I

    .line 57
    .line 58
    invoke-static {v5}, Ljmf;->k(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const-string v6, "*228#"

    .line 63
    .line 64
    const-string v7, "9mobile"

    .line 65
    .line 66
    invoke-direct {v3, v4, v5, v6, v7}, Lteam/opay/pay/pin/NoNetWorkActivity$UssdItemData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x4

    .line 70
    new-array v4, v4, [Lteam/opay/pay/pin/NoNetWorkActivity$UssdItemData;

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    aput-object v0, v4, v5

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    aput-object v1, v4, v0

    .line 77
    .line 78
    const/4 v0, 0x2

    .line 79
    aput-object v2, v4, v0

    .line 80
    .line 81
    const/4 v0, 0x3

    .line 82
    aput-object v3, v4, v0

    .line 83
    .line 84
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0
.end method

.method public static final N(Lteam/opay/pay/pin/NoNetWorkActivity;)Lqf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lqf;->inflate(Landroid/view/LayoutInflater;)Lqf;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final G()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/pin/NoNetWorkActivity$UssdItemData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/pin/NoNetWorkActivity;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public H()Lqf;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/pin/NoNetWorkActivity;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqf;

    .line 8
    .line 9
    return-object v0
.end method

.method public getDarkStatusBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/pin/NoNetWorkActivity;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public getLightStatusBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/pin/NoNetWorkActivity;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/pin/NoNetWorkActivity;->H()Lqf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/android/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lx7b;->a:Lx7b;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [Lkotlin/Pair;

    .line 8
    .line 9
    const-string v1, "Network_errorpage_show"

    .line 10
    .line 11
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/pin/NoNetWorkActivity;->H()Lqf;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p1, p1, Lqf;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 19
    .line 20
    sget v0, Lteam/opay/pay/R$color;->color_f8f8fb:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lteam/opay/core/android/views/OpayActionBar;->c(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/pin/NoNetWorkActivity;->H()Lqf;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p1, p1, Lqf;->g:Landroid/widget/TextView;

    .line 30
    .line 31
    sget v0, Lteam/opay/pay/R$string;->osdk_no_net_activity_tips1:I

    .line 32
    .line 33
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/pay/pin/NoNetWorkActivity;->H()Lqf;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p1, p1, Lqf;->h:Landroid/widget/TextView;

    .line 49
    .line 50
    sget v0, Lteam/opay/pay/R$string;->osdk_no_net_activity_tips2:I

    .line 51
    .line 52
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lteam/opay/pay/pin/NoNetWorkActivity;->H()Lqf;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p1, p1, Lqf;->i:Landroid/widget/TextView;

    .line 68
    .line 69
    sget v0, Lteam/opay/pay/R$string;->osdk_no_net_activity_tips3:I

    .line 70
    .line 71
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lteam/opay/pay/pin/NoNetWorkActivity;->H()Lqf;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object p1, p1, Lqf;->d:Lcom/google/android/material/button/MaterialButton;

    .line 87
    .line 88
    const-string v0, "btnGoSetting"

    .line 89
    .line 90
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Lbx9;

    .line 94
    .line 95
    invoke-direct {v0, p0}, Lbx9;-><init>(Lteam/opay/pay/pin/NoNetWorkActivity;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lteam/opay/pay/pin/NoNetWorkActivity;->H()Lqf;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object p1, p1, Lqf;->e:Lcom/google/android/material/button/MaterialButton;

    .line 106
    .line 107
    const-string v0, "btnMockup"

    .line 108
    .line 109
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Lcx9;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Lcx9;-><init>(Lteam/opay/pay/pin/NoNetWorkActivity;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lteam/opay/pay/pin/NoNetWorkActivity;->H()Lqf;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object p1, p1, Lqf;->c:Lcom/google/android/material/button/MaterialButton;

    .line 125
    .line 126
    const-string v0, "btnDial"

    .line 127
    .line 128
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-instance v0, Ldx9;

    .line 132
    .line 133
    invoke-direct {v0, p0}, Ldx9;-><init>(Lteam/opay/pay/pin/NoNetWorkActivity;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 137
    .line 138
    .line 139
    new-instance p1, Lteam/opay/pay/pin/NoNetWorkActivity$UssdAdapter;

    .line 140
    .line 141
    invoke-direct {p1, p0}, Lteam/opay/pay/pin/NoNetWorkActivity$UssdAdapter;-><init>(Lteam/opay/pay/pin/NoNetWorkActivity;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lteam/opay/pay/pin/NoNetWorkActivity;->H()Lqf;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v0, v0, Lqf;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lteam/opay/pay/pin/NoNetWorkActivity;->G()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Lex9;

    .line 161
    .line 162
    invoke-direct {v0, p0}, Lex9;-><init>(Lteam/opay/pay/pin/NoNetWorkActivity;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public setDarkStatusBarColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/pin/NoNetWorkActivity;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public setLightStatusBarColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/pin/NoNetWorkActivity;->b:I

    .line 2
    .line 3
    return-void
.end method
