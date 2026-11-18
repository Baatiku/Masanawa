.class public final Lteam/opay/pay/sensesecurity/SecurityCenterDialogActivity;
.super Lteam/opay/pay/sensesecurity/Hilt_SecurityCenterDialogActivity;
.source "SecurityCenterDialogActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\t8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/sensesecurity/SecurityCenterDialogActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Ly0b;",
        "e",
        "Lid8;",
        "C",
        "()Ly0b;",
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
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->osdk_security_center_dialog_activity:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/sensesecurity/Hilt_SecurityCenterDialogActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lfad;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lfad;-><init>(Lteam/opay/pay/sensesecurity/SecurityCenterDialogActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogActivity;->e:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/sensesecurity/SecurityCenterDialogActivity;)Ly0b;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/sensesecurity/SecurityCenterDialogActivity;->E(Lteam/opay/pay/sensesecurity/SecurityCenterDialogActivity;)Ly0b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/sensesecurity/SecurityCenterDialogActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/sensesecurity/SecurityCenterDialogActivity;->D(Lteam/opay/pay/sensesecurity/SecurityCenterDialogActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final D(Lteam/opay/pay/sensesecurity/SecurityCenterDialogActivity;)Lkotlin/Unit;
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

.method public static final E(Lteam/opay/pay/sensesecurity/SecurityCenterDialogActivity;)Ly0b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ly0b;->inflate(Landroid/view/LayoutInflater;)Ly0b;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public C()Ly0b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ly0b;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/sensesecurity/SecurityCenterDialogActivity;->C()Ly0b;

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
    invoke-super {p0, p1}, Lteam/opay/pay/sensesecurity/Hilt_SecurityCenterDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lteam/opay/pay/sensesecurity/SecurityCenterDialog;

    .line 5
    .line 6
    invoke-direct {p1}, Lteam/opay/pay/sensesecurity/SecurityCenterDialog;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lgad;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lgad;-><init>(Lteam/opay/pay/sensesecurity/SecurityCenterDialogActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lteam/opay/pay/sensesecurity/SecurityCenterDialog;->w0(Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "getSupportFragmentManager(...)"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "SecurityCenterDialog"

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lteam/opay/core/base/BaseSheetFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
