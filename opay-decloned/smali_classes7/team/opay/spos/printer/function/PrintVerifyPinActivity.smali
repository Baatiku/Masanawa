.class public final Lteam/opay/spos/printer/function/PrintVerifyPinActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PrintVerifyPinActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/printer/function/PrintVerifyPinActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0013B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0003\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/spos/printer/function/PrintVerifyPinActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "onNewIntent",
        "",
        "u",
        "(Landroid/content/Intent;Z)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "(Landroid/content/Intent;)V",
        "finish",
        "y",
        "a",
        "Companion",
        "spos-printer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lteam/opay/spos/printer/function/PrintVerifyPinActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/spos/printer/function/PrintVerifyPinActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/spos/printer/function/PrintVerifyPinActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/spos/printer/function/PrintVerifyPinActivity;->a:Lteam/opay/spos/printer/function/PrintVerifyPinActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final u(Landroid/content/Intent;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lvd;->c(Landroid/net/Uri;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "opaypos://open/verify/printSupervisorPin"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/PrintVerifyPinActivity;->y()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static synthetic w(Lteam/opay/spos/printer/function/PrintVerifyPinActivity;Landroid/content/Intent;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lteam/opay/spos/printer/function/PrintVerifyPinActivity;->u(Landroid/content/Intent;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

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
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "intent"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p0, p1, v2, v0, v1}, Lteam/opay/spos/printer/function/PrintVerifyPinActivity;->w(Lteam/opay/spos/printer/function/PrintVerifyPinActivity;Landroid/content/Intent;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, p1, v0}, Lteam/opay/spos/printer/function/PrintVerifyPinActivity;->u(Landroid/content/Intent;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment;->s:Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment$Companion;->a()Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lteam/opay/spos/printer/function/PrintVerifyPinActivity$showPrintVerifyPinDialog$1$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lteam/opay/spos/printer/function/PrintVerifyPinActivity$showPrintVerifyPinDialog$1$1;-><init>(Lteam/opay/spos/printer/function/PrintVerifyPinActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment;->a0(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lteam/opay/spos/printer/function/PrintVerifyPinActivity$showPrintVerifyPinDialog$1$2;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lteam/opay/spos/printer/function/PrintVerifyPinActivity$showPrintVerifyPinDialog$1$2;-><init>(Lteam/opay/spos/printer/function/PrintVerifyPinActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment;->b0(Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lteam/opay/spos/printer/function/PrintVerifyPinActivity$showPrintVerifyPinDialog$1$3;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lteam/opay/spos/printer/function/PrintVerifyPinActivity$showPrintVerifyPinDialog$1$3;-><init>(Lteam/opay/spos/printer/function/PrintVerifyPinActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment;->Z(Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0}, Lre6;->n(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/common/base/BaseDialogFragment;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
