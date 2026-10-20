.class public final Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$a;
.super Landroid/text/style/ClickableSpan;
.source "KycGuardianAuthorizationFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;->y0()Ljava/lang/CharSequence;
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
        "team/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$a",
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
.field public final synthetic a:Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$a;->a:Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;

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
    .locals 1

    .line 1
    const-string/jumbo v0, "widget"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$a;->a:Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "requireContext(...)"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "https://mkt.opayweb.com/proh5?code=1892588128410144769&id=271"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
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
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment$a;->a:Lteam/opay/pay/kyc/task/guardian/KycGuardianAuthorizationFragment;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Lteam/opay/pay/R$color;->mint:I

    .line 13
    .line 14
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
