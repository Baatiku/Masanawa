.class public final Lteam/opay/pay/onboarding/help/HelpActivity;
.super Lteam/opay/pay/android/NoBindingActivity;
.source "HelpActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/help/HelpActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0018\u0000 \u00152\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0010\u001a\u00020\t8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0014\u001a\u00020\t8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u000b\u001a\u0004\u0008\u0012\u0010\r\"\u0004\u0008\u0013\u0010\u000f\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/help/HelpActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "c",
        "I",
        "getDarkStatusBarColor",
        "()I",
        "setDarkStatusBarColor",
        "(I)V",
        "darkStatusBarColor",
        "d",
        "getLightStatusBarColor",
        "setLightStatusBarColor",
        "lightStatusBarColor",
        "e",
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
.field public static final e:Lteam/opay/pay/onboarding/help/HelpActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/help/HelpActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/onboarding/help/HelpActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/onboarding/help/HelpActivity;->e:Lteam/opay/pay/onboarding/help/HelpActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container_f8f8fb:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/android/NoBindingActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    sget v0, Lteam/opay/pay/R$color;->no_dark_1b1b1b:I

    .line 7
    .line 8
    iput v0, p0, Lteam/opay/pay/onboarding/help/HelpActivity;->c:I

    .line 9
    .line 10
    sget v0, Lteam/opay/pay/R$color;->no_dark_f8f8fb:I

    .line 11
    .line 12
    iput v0, p0, Lteam/opay/pay/onboarding/help/HelpActivity;->d:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getDarkStatusBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/onboarding/help/HelpActivity;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getLightStatusBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/onboarding/help/HelpActivity;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/android/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string v1, "key_from"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v0

    .line 19
    :goto_0
    const-string v1, ""

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    move-object p1, v1

    .line 24
    :cond_1
    const-string v2, "LOGIN"

    .line 25
    .line 26
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_4

    .line 31
    .line 32
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 33
    .line 34
    new-instance v2, Lteam/opay/pay/onboarding/help/LoginHelpFragment;

    .line 35
    .line 36
    invoke-direct {v2}, Lteam/opay/pay/onboarding/help/LoginHelpFragment;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    const-string v0, "key_input_phone"

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_2
    if-nez v0, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move-object v1, v0

    .line 55
    :goto_1
    invoke-virtual {v2, v1}, Lteam/opay/pay/onboarding/help/LoginHelpFragment;->Z(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    invoke-static {p0, p1, v2}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 65
    .line 66
    new-instance v0, Lteam/opay/pay/onboarding/help/SignHelpFragment;

    .line 67
    .line 68
    invoke-direct {v0}, Lteam/opay/pay/onboarding/help/SignHelpFragment;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 72
    .line 73
    .line 74
    :goto_2
    return-void
.end method

.method public setDarkStatusBarColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/onboarding/help/HelpActivity;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public setLightStatusBarColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/onboarding/help/HelpActivity;->d:I

    .line 2
    .line 3
    return-void
.end method
