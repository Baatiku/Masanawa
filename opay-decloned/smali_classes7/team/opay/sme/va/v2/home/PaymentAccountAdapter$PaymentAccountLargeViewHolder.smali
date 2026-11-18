.class public final Lteam/opay/sme/va/v2/home/PaymentAccountAdapter$PaymentAccountLargeViewHolder;
.super Lteam/opay/core/common/internal/GenericBindingHolder;
.source "PaymentAccountAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/sme/va/v2/home/PaymentAccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PaymentAccountLargeViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/common/internal/GenericBindingHolder<",
        "Lteam/opay/business/provider/smeVa/TransferNumberInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/sme/va/v2/home/PaymentAccountAdapter$PaymentAccountLargeViewHolder;",
        "Lteam/opay/core/common/internal/GenericBindingHolder;",
        "Lteam/opay/business/provider/smeVa/TransferNumberInfo;",
        "Loyd;",
        "binding",
        "<init>",
        "(Lteam/opay/sme/va/v2/home/PaymentAccountAdapter;Loyd;)V",
        "",
        "position",
        "data",
        "",
        "d",
        "(ILteam/opay/business/provider/smeVa/TransferNumberInfo;)V",
        "a",
        "Loyd;",
        "getBinding",
        "()Loyd;",
        "sme-va_release"
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
.field public final a:Loyd;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/sme/va/v2/home/PaymentAccountAdapter;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/v2/home/PaymentAccountAdapter;Loyd;)V
    .locals 1
    .param p1    # Lteam/opay/sme/va/v2/home/PaymentAccountAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loyd;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/sme/va/v2/home/PaymentAccountAdapter$PaymentAccountLargeViewHolder;->b:Lteam/opay/sme/va/v2/home/PaymentAccountAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Lteam/opay/core/common/internal/GenericBindingHolder;-><init>(Lxyf;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lteam/opay/sme/va/v2/home/PaymentAccountAdapter$PaymentAccountLargeViewHolder;->a:Loyd;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Loyd;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/va/v2/home/PaymentAccountAdapter$PaymentAccountLargeViewHolder;->e(Loyd;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Loyd;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/va/v2/home/PaymentAccountAdapter$PaymentAccountLargeViewHolder;->g(Loyd;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Loyd;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/va/v2/home/PaymentAccountAdapter$PaymentAccountLargeViewHolder;->f(Loyd;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final e(Loyd;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)Lkotlin/Unit;
    .locals 7

    .line 1
    sget-object v0, Lud;->a:Lud;

    .line 2
    .line 3
    invoke-virtual {p0}, Loyd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v6, "getContext(...)"

    .line 12
    .line 13
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getVoiceJumpUrl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string v2, ""

    .line 23
    .line 24
    :cond_0
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v0 .. v5}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 31
    .line 32
    invoke-virtual {p0}, Loyd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "transferNumber"

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumber()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 v1, 0x1

    .line 54
    new-array v1, v1, [Lkotlin/Pair;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    aput-object p1, v1, v2

    .line 58
    .line 59
    const-string p1, "biz_home_account_card_voice_click"

    .line 60
    .line 61
    invoke-virtual {v0, p0, p1, v1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 62
    .line 63
    .line 64
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method

.method public static final f(Loyd;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)Lkotlin/Unit;
    .locals 7

    .line 1
    sget-object v0, Lud;->a:Lud;

    .line 2
    .line 3
    invoke-virtual {p0}, Loyd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v6, "getContext(...)"

    .line 12
    .line 13
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getNoticeJumpUrl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string v2, ""

    .line 23
    .line 24
    :cond_0
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v0 .. v5}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 31
    .line 32
    invoke-virtual {p0}, Loyd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "transferNumber"

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumber()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getVoiceOpen()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v2, "status"

    .line 62
    .line 63
    invoke-static {v2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 v2, 0x2

    .line 68
    new-array v2, v2, [Lkotlin/Pair;

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    aput-object v1, v2, v3

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    aput-object p1, v2, v1

    .line 75
    .line 76
    const-string p1, "biz_home_account_card_notice_click"

    .line 77
    .line 78
    invoke-virtual {v0, p0, p1, v2}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 79
    .line 80
    .line 81
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0
.end method

.method public static final g(Loyd;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)Lkotlin/Unit;
    .locals 7

    .line 1
    sget-object v0, Lud;->a:Lud;

    .line 2
    .line 3
    invoke-virtual {p0}, Loyd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v6, "getContext(...)"

    .line 12
    .line 13
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumber()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "opay://business/sme/va/transferNumberDetails?transferNumber="

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v4, 0x4

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static/range {v0 .. v5}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 44
    .line 45
    invoke-virtual {p0}, Loyd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "transferNumber"

    .line 57
    .line 58
    invoke-virtual {p1}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumber()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const/4 v1, 0x1

    .line 67
    new-array v1, v1, [Lkotlin/Pair;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    aput-object p1, v1, v2

    .line 71
    .line 72
    const-string p1, "biz_home_account_card_disabled_click"

    .line 73
    .line 74
    invoke-virtual {v0, p0, p1, v1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 75
    .line 76
    .line 77
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p0
.end method


# virtual methods
.method public d(ILteam/opay/business/provider/smeVa/TransferNumberInfo;)V
    .locals 8
    .param p2    # Lteam/opay/business/provider/smeVa/TransferNumberInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "data"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/sme/va/v2/home/PaymentAccountAdapter$PaymentAccountLargeViewHolder;->a:Loyd;

    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/sme/va/v2/home/PaymentAccountAdapter$PaymentAccountLargeViewHolder;->b:Lteam/opay/sme/va/v2/home/PaymentAccountAdapter;

    .line 9
    .line 10
    iget-object v1, p1, Loyd;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    invoke-virtual {p1}, Loyd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getAccountNumberIsPhone()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    sget v3, Lteam/opay/sme/va/R$string;->sme_va_wallet_no:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget v3, Lteam/opay/sme/va/R$string;->sme_va_business_no:I

    .line 30
    .line 31
    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p1, Loyd;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumberShow()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    const-string v2, ""

    .line 47
    .line 48
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p1, Loyd;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    .line 53
    const-string v2, "layoutVoice"

    .line 54
    .line 55
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getAccountActive()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x1

    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getVoiceJumpUrl()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    invoke-static {v3}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 v3, 0x1

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    :goto_1
    const/4 v3, 0x0

    .line 82
    :goto_2
    invoke-static {v1, v3}, Lg0g;->j(Landroid/view/View;Z)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p1, Loyd;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 86
    .line 87
    const-string v3, "layoutNotice"

    .line 88
    .line 89
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getAccountActive()Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_5

    .line 97
    .line 98
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getNoticeJumpUrl()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    if-eqz v6, :cond_5

    .line 103
    .line 104
    invoke-static {v6}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_4

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_4
    const/4 v4, 0x1

    .line 112
    :cond_5
    :goto_3
    invoke-static {v1, v4}, Lg0g;->j(Landroid/view/View;Z)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p1, Loyd;->l:Lteam/opay/core/widget/fillet/CorpConstraintLayout;

    .line 116
    .line 117
    const-string v4, "layoutDisable"

    .line 118
    .line 119
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getAccountActive()Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    xor-int/2addr v5, v6

    .line 127
    invoke-static {v1, v5}, Lg0g;->j(Landroid/view/View;Z)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p1, Loyd;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    invoke-virtual {p1}, Loyd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getAccountActive()Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_6

    .line 145
    .line 146
    sget v6, Lteam/opay/sme/va/R$color;->sme_va_color_black85_white:I

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_6
    sget v6, Lteam/opay/sme/va/R$color;->sme_va_color_black15_white65:I

    .line 150
    .line 151
    :goto_4
    invoke-static {v5, v6}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    .line 157
    .line 158
    iget-object v1, p1, Loyd;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 159
    .line 160
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getVoiceOpen()Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-eqz v5, :cond_7

    .line 165
    .line 166
    sget v5, Lteam/opay/sme/va/R$drawable;->sme_va_icon_voice_open:I

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_7
    sget v5, Lteam/opay/sme/va/R$drawable;->sme_va_icon_voice_close:I

    .line 170
    .line 171
    :goto_5
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lteam/opay/sme/va/v2/home/PaymentAccountAdapter;->l()Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const-string v1, "iconVoice"

    .line 179
    .line 180
    const-string v5, "iconNotice"

    .line 181
    .line 182
    const-string v6, "imageTitleHead"

    .line 183
    .line 184
    if-nez v0, :cond_8

    .line 185
    .line 186
    goto :goto_7

    .line 187
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    const/4 v7, 0x2

    .line 192
    if-ne v0, v7, :cond_a

    .line 193
    .line 194
    iget-object v0, p1, Loyd;->e:Lteam/opay/core/widget/fillet/CorpImageView;

    .line 195
    .line 196
    sget v7, Lteam/opay/sme/va/R$color;->sme_va_color_account_card_background_v2:I

    .line 197
    .line 198
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p1, Loyd;->f:Lteam/opay/core/widget/fillet/CorpImageView;

    .line 202
    .line 203
    sget v7, Lteam/opay/sme/va/R$color;->sme_va_color_account_card_forground_v2:I

    .line 204
    .line 205
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p1, Loyd;->g:Lteam/opay/core/widget/fillet/CorpImageView;

    .line 209
    .line 210
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v0, v7}, Lwie;->t(Landroidx/appcompat/widget/AppCompatImageView;I)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p1, Loyd;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 217
    .line 218
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    sget v5, Lteam/opay/sme/va/R$color;->sme_va_color_account_card_voice_v2:I

    .line 222
    .line 223
    invoke-static {v0, v5}, Lwie;->t(Landroidx/appcompat/widget/AppCompatImageView;I)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p1, Loyd;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 227
    .line 228
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getVoiceOpen()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_9

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_9
    sget v5, Lteam/opay/sme/va/R$color;->sme_va_color_account_card_voice_close:I

    .line 239
    .line 240
    :goto_6
    invoke-static {v0, v5}, Lwie;->t(Landroidx/appcompat/widget/AppCompatImageView;I)V

    .line 241
    .line 242
    .line 243
    goto :goto_9

    .line 244
    :cond_a
    :goto_7
    iget-object v0, p1, Loyd;->e:Lteam/opay/core/widget/fillet/CorpImageView;

    .line 245
    .line 246
    sget v7, Lteam/opay/sme/va/R$color;->sme_va_color_account_card_background_v1:I

    .line 247
    .line 248
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 249
    .line 250
    .line 251
    iget-object v0, p1, Loyd;->f:Lteam/opay/core/widget/fillet/CorpImageView;

    .line 252
    .line 253
    sget v7, Lteam/opay/sme/va/R$color;->sme_va_color_account_card_forground_v1:I

    .line 254
    .line 255
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 256
    .line 257
    .line 258
    iget-object v0, p1, Loyd;->g:Lteam/opay/core/widget/fillet/CorpImageView;

    .line 259
    .line 260
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-static {v0, v7}, Lwie;->t(Landroidx/appcompat/widget/AppCompatImageView;I)V

    .line 264
    .line 265
    .line 266
    iget-object v0, p1, Loyd;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 267
    .line 268
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    sget v5, Lteam/opay/sme/va/R$color;->sme_va_color_account_card_voice_v1:I

    .line 272
    .line 273
    invoke-static {v0, v5}, Lwie;->t(Landroidx/appcompat/widget/AppCompatImageView;I)V

    .line 274
    .line 275
    .line 276
    iget-object v0, p1, Loyd;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 277
    .line 278
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getVoiceOpen()Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_b

    .line 286
    .line 287
    goto :goto_8

    .line 288
    :cond_b
    sget v5, Lteam/opay/sme/va/R$color;->sme_va_color_account_card_voice_close:I

    .line 289
    .line 290
    :goto_8
    invoke-static {v0, v5}, Lwie;->t(Landroidx/appcompat/widget/AppCompatImageView;I)V

    .line 291
    .line 292
    .line 293
    :goto_9
    iget-object v0, p1, Loyd;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 294
    .line 295
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    new-instance v1, Lodb;

    .line 299
    .line 300
    invoke-direct {v1, p1, p2}, Lodb;-><init>(Loyd;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)V

    .line 301
    .line 302
    .line 303
    invoke-static {v0, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 304
    .line 305
    .line 306
    iget-object v0, p1, Loyd;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 307
    .line 308
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    new-instance v1, Lpdb;

    .line 312
    .line 313
    invoke-direct {v1, p1, p2}, Lpdb;-><init>(Loyd;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)V

    .line 314
    .line 315
    .line 316
    invoke-static {v0, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 317
    .line 318
    .line 319
    iget-object v0, p1, Loyd;->l:Lteam/opay/core/widget/fillet/CorpConstraintLayout;

    .line 320
    .line 321
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    new-instance v1, Lqdb;

    .line 325
    .line 326
    invoke-direct {v1, p1, p2}, Lqdb;-><init>(Loyd;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v0, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 330
    .line 331
    .line 332
    return-void
.end method
