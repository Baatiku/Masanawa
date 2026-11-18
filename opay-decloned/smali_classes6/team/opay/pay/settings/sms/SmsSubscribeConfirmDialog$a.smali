.class public final Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog$a;
.super Landroid/text/style/ClickableSpan;
.source "SmsSubscribeConfirmDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "team/opay/pay/settings/sms/SmsSubscribeConfirmDialog$a",
        "Landroid/text/style/ClickableSpan;",
        "Landroid/view/View;",
        "widget",
        "",
        "onClick",
        "(Landroid/view/View;)V",
        "Landroid/text/TextPaint;",
        "ds",
        "updateDrawState",
        "(Landroid/text/TextPaint;)V",
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
.field public final synthetic a:Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;


# direct methods
.method public constructor <init>(Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog$a;->a:Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "widget"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lx7b;->a:Lx7b;

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog$a;->a:Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;

    .line 10
    .line 11
    invoke-static {v0}, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->P(Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "status"

    .line 16
    .line 17
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x1

    .line 22
    new-array v1, v1, [Lkotlin/Pair;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object v0, v1, v2

    .line 26
    .line 27
    const-string v0, "sms_alert_agreement_link_click"

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 33
    .line 34
    const-class v0, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog$a;->a:Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    sget-object v1, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->Companion:Lteam/opay/pay/settings/sms/SmsConfigSwitcher$Companion;

    .line 54
    .line 55
    invoke-virtual {v1}, Lteam/opay/pay/settings/sms/SmsConfigSwitcher$Companion;->a()Lteam/opay/pay/settings/sms/SmsConfigSwitcher;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1}, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->getTeamAndConditions()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const-string v2, "sms"

    .line 69
    .line 70
    invoke-interface {p1, v0, v1, v2}, Lteam/opay/swarmfoundation/action/IActionManager;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    nop

    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1
    const-string v0, "ds"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog$a;->a:Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    sget v1, Lteam/opay/pay/R$color;->color_00B876:I

    .line 23
    .line 24
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
