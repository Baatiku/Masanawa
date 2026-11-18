.class public final Lteam/opay/pay/onboarding/register/RegisterBackTipsDialog$Companion;
.super Ljava/lang/Object;
.source "RegisterBackTipsDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/onboarding/register/RegisterBackTipsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/register/RegisterBackTipsDialog$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/pay/onboarding/register/RegisterBackTipsDialog;",
        "b",
        "()Lteam/opay/pay/onboarding/register/RegisterBackTipsDialog;",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "",
        "c",
        "(Landroidx/fragment/app/FragmentActivity;)V",
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
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/onboarding/register/RegisterBackTipsDialog$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/RegisterBackTipsDialog$Companion;->d(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-static {p0, p1}, Lum8;->i(Landroid/app/Activity;Z)V

    .line 5
    .line 6
    .line 7
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public final b()Lteam/opay/pay/onboarding/register/RegisterBackTipsDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/register/RegisterBackTipsDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/onboarding/register/RegisterBackTipsDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final c(Landroidx/fragment/app/FragmentActivity;)V
    .locals 13
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;->l:Lteam/opay/pay/settings/CommonTwoButtonDialogFragment$Companion;

    .line 7
    .line 8
    sget v1, Lteam/opay/pay/R$string;->notice:I

    .line 9
    .line 10
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    sget v1, Lteam/opay/pay/R$string;->osdk_set_password_exit_tips:I

    .line 15
    .line 16
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    sget v1, Lteam/opay/pay/R$string;->osdk_not_now:I

    .line 21
    .line 22
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    sget v1, Lteam/opay/pay/R$string;->osdk_set_now:I

    .line 27
    .line 28
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    new-instance v1, Lteam/opay/pay/settings/CommonTwoButtonDialogFragmentInfo;

    .line 33
    .line 34
    const/16 v11, 0xf0

    .line 35
    .line 36
    const/4 v12, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v10, 0x0

    .line 41
    move-object v2, v1

    .line 42
    invoke-direct/range {v2 .. v12}, Lteam/opay/pay/settings/CommonTwoButtonDialogFragmentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZFLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lteam/opay/pay/settings/CommonTwoButtonDialogFragment$Companion;->a(Lteam/opay/pay/settings/CommonTwoButtonDialogFragmentInfo;)Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Ljjc;

    .line 50
    .line 51
    invoke-direct {v1, p1}, Ljjc;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;->Q(Lkotlin/jvm/functions/Function1;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
