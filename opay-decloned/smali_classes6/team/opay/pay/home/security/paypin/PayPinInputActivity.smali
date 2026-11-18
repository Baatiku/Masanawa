.class public final Lteam/opay/pay/home/security/paypin/PayPinInputActivity;
.super Lteam/opay/pay/home/security/paypin/Hilt_PayPinInputActivity;
.source "PayPinInputActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lteam/opay/pay/home/security/paypin/PayPinInputActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_content_transparent:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/security/paypin/Hilt_PayPinInputActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/home/security/paypin/PayPinInputActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/paypin/PayPinInputActivity;->C(Lteam/opay/pay/home/security/paypin/PayPinInputActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/home/security/paypin/PayPinInputActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/paypin/PayPinInputActivity;->D(Lteam/opay/pay/home/security/paypin/PayPinInputActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final C(Lteam/opay/pay/home/security/paypin/PayPinInputActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "data"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const/4 p1, -0x1

    .line 17
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static final D(Lteam/opay/pay/home/security/paypin/PayPinInputActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/home/security/paypin/Hilt_PayPinInputActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v0, "from"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    :cond_0
    const-class p1, Lteam/opay/pay/home/security/paypin/PayPinInputActivity;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :cond_1
    sget-object v0, Lteam/opay/pay/home/security/paypin/PayPinInputFragment;->E:Lteam/opay/pay/home/security/paypin/PayPinInputFragment$Companion;

    .line 31
    .line 32
    invoke-virtual {v0}, Lteam/opay/pay/home/security/paypin/PayPinInputFragment$Companion;->a()Lteam/opay/pay/home/security/paypin/PayPinInputFragment;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/security/paypin/PayPinInputFragment;->w0(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Lhab;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Lhab;-><init>(Lteam/opay/pay/home/security/paypin/PayPinInputActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/security/paypin/PayPinInputFragment;->p0(Lkotlin/jvm/functions/Function1;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Liab;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Liab;-><init>(Lteam/opay/pay/home/security/paypin/PayPinInputActivity;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/security/paypin/PayPinInputFragment;->r0(Lkotlin/jvm/functions/Function0;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->F(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
