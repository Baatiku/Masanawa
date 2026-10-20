.class public final Lteam/opay/pay/settings/MessageNotificationsSettingActivity;
.super Lteam/opay/pay/android/BaseActivity;
.source "MessageNotificationsSettingActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\t8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/settings/MessageNotificationsSettingActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onPostCreate",
        "(Landroid/os/Bundle;)V",
        "Lic8;",
        "a",
        "Lid8;",
        "C",
        "()Lic8;",
        "viewBinding",
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
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->layout_message_notifications:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/android/BaseActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lk99;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lk99;-><init>(Lteam/opay/pay/settings/MessageNotificationsSettingActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/settings/MessageNotificationsSettingActivity;->a:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/settings/MessageNotificationsSettingActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/MessageNotificationsSettingActivity;->D(Lteam/opay/pay/settings/MessageNotificationsSettingActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/settings/MessageNotificationsSettingActivity;)Lic8;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/MessageNotificationsSettingActivity;->E(Lteam/opay/pay/settings/MessageNotificationsSettingActivity;)Lic8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final D(Lteam/opay/pay/settings/MessageNotificationsSettingActivity;)Lkotlin/Unit;
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
    const-string v2, "notification_center_set_sms_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->h:Lteam/opay/pay/settings/sms/SmsSubscribeActivity$Companion;

    .line 12
    .line 13
    const-string v1, "Notification_center_set"

    .line 14
    .line 15
    invoke-virtual {v0, p0, v1}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final E(Lteam/opay/pay/settings/MessageNotificationsSettingActivity;)Lic8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lic8;->inflate(Landroid/view/LayoutInflater;)Lic8;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public C()Lic8;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/MessageNotificationsSettingActivity;->a:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lic8;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/MessageNotificationsSettingActivity;->C()Lic8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

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
    const-string v1, "notification_center_setpage_show"

    .line 10
    .line 11
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/settings/MessageNotificationsSettingActivity;->C()Lic8;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p1, p1, Lic8;->c:Landroid/view/View;

    .line 19
    .line 20
    const-string v0, "btnSmsSettings"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ll99;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Ll99;-><init>(Lteam/opay/pay/settings/MessageNotificationsSettingActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
