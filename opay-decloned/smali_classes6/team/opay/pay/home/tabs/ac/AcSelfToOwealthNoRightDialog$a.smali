.class public final Lteam/opay/pay/home/tabs/ac/AcSelfToOwealthNoRightDialog$a;
.super Landroid/text/style/ClickableSpan;
.source "AcSelfToOwealthNoRightDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/tabs/ac/AcSelfToOwealthNoRightDialog;->j0(Lteam/opay/pay/cashier/newpayment/OWealthGuideData;)V
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
        "team/opay/pay/home/tabs/ac/AcSelfToOwealthNoRightDialog$a",
        "Landroid/text/style/ClickableSpan;",
        "Landroid/text/TextPaint;",
        "ds",
        "",
        "updateDrawState",
        "(Landroid/text/TextPaint;)V",
        "Landroid/view/View;",
        "widget",
        "onClick",
        "(Landroid/view/View;)V",
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
.field public final synthetic a:Lteam/opay/pay/home/tabs/ac/AcSelfToOwealthNoRightDialog;

.field public final synthetic b:Lteam/opay/pay/cashier/newpayment/OWealthGuideData;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/tabs/ac/AcSelfToOwealthNoRightDialog;Lteam/opay/pay/cashier/newpayment/OWealthGuideData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/AcSelfToOwealthNoRightDialog$a;->a:Lteam/opay/pay/home/tabs/ac/AcSelfToOwealthNoRightDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/tabs/ac/AcSelfToOwealthNoRightDialog$a;->b:Lteam/opay/pay/cashier/newpayment/OWealthGuideData;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/AcSelfToOwealthNoRightDialog$a;->a:Lteam/opay/pay/home/tabs/ac/AcSelfToOwealthNoRightDialog;

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/core/base/BaseSheetFragment;->getAppContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/AcSelfToOwealthNoRightDialog$a;->b:Lteam/opay/pay/cashier/newpayment/OWealthGuideData;

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/cashier/newpayment/OWealthGuideData;->getUrlTermsConditions()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    :cond_0
    invoke-static {p1, v0}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
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
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/AcSelfToOwealthNoRightDialog$a;->a:Lteam/opay/pay/home/tabs/ac/AcSelfToOwealthNoRightDialog;

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/core/base/BaseSheetFragment;->getAppContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Lteam/opay/pay/R$color;->color_00B876:I

    .line 16
    .line 17
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
