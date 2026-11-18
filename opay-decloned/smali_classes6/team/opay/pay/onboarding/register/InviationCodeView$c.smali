.class public final Lteam/opay/pay/onboarding/register/InviationCodeView$c;
.super Landroid/text/method/DigitsKeyListener;
.source "InviationCodeView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/onboarding/register/InviationCodeView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0019\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "team/opay/pay/onboarding/register/InviationCodeView$c",
        "Landroid/text/method/DigitsKeyListener;",
        "",
        "getInputType",
        "()I",
        "",
        "getAcceptedChars",
        "()[C",
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

    .line 1
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAcceptedChars()[C
    .locals 2

    .line 1
    sget v0, Lteam/opay/pay/R$string;->number_text_pattern:I

    .line 2
    .line 3
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "toCharArray(...)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public getInputType()I
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/onboarding/register/KeyboardNumberShowFirstSwitcher;->Companion:Lteam/opay/pay/onboarding/register/KeyboardNumberShowFirstSwitcher$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/KeyboardNumberShowFirstSwitcher$Companion;->a()Lteam/opay/pay/onboarding/register/KeyboardNumberShowFirstSwitcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/KeyboardNumberShowFirstSwitcher;->getNumberInput()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    :cond_0
    return v1
.end method
