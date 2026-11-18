.class public final Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion$b;
.super Landroid/text/style/ClickableSpan;
.source "RegisterOwealthGuideFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
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
        "team/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion$b",
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
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion$b;->a:Landroid/content/Context;

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
    iget-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion$b;->a:Landroid/content/Context;

    .line 8
    .line 9
    const-string v0, "https://mkt.opayweb.com/proh5?code=1664264508950052866&id=151"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    sget-object p1, Lx7b;->a:Lx7b;

    .line 15
    .line 16
    const-string v0, "Source"

    .line 17
    .line 18
    const-string v1, "createAccount"

    .line 19
    .line 20
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    new-array v1, v1, [Lkotlin/Pair;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    aput-object v0, v1, v2

    .line 29
    .line 30
    const-string v0, "register_interestAccount_privacy_click"

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 33
    .line 34
    .line 35
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
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion$b;->a:Landroid/content/Context;

    .line 10
    .line 11
    sget v1, Lteam/opay/pay/R$color;->black_65:I

    .line 12
    .line 13
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
