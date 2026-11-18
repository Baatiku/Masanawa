.class public final Lteam/opay/pay/transfer/SpiltOrderView$b;
.super Lteam/opay/core/android/views/SafeDelayedTextWatcher;
.source "SpiltOrderView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/SpiltOrderView;->g(Lteam/opay/pay/android/views/NoticeAmountInputView;Lag8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/pay/transfer/SpiltOrderView$b",
        "Lteam/opay/core/android/views/SafeDelayedTextWatcher;",
        "Landroid/text/Editable;",
        "s",
        "",
        "b",
        "(Landroid/text/Editable;)V",
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
.field public final synthetic e:Lteam/opay/pay/transfer/SpiltOrderView;

.field public final synthetic f:Lteam/opay/pay/android/views/NoticeAmountInputView;


# direct methods
.method public constructor <init>(Lag8;Lteam/opay/pay/transfer/SpiltOrderView;Lteam/opay/pay/android/views/NoticeAmountInputView;)V
    .locals 6

    .line 1
    iput-object p2, p0, Lteam/opay/pay/transfer/SpiltOrderView$b;->e:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 2
    .line 3
    iput-object p3, p0, Lteam/opay/pay/transfer/SpiltOrderView$b;->f:Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 4
    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v5, 0x0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    invoke-direct/range {v0 .. v5}, Lteam/opay/core/android/views/SafeDelayedTextWatcher;-><init>(Lag8;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public b(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lteam/opay/pay/transfer/SpiltOrderView$b;->e:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 2
    .line 3
    sget-object v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/transfer/SpiltOrderView$b;->f:Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 6
    .line 7
    invoke-virtual {v1}, Lteam/opay/pay/android/views/NoticeAmountInputView;->getInputText()Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/pay/android/views/NoticeAmountInputText;->getFormatText()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0, v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_2
    invoke-static {p1, v1}, Lteam/opay/pay/transfer/SpiltOrderView;->d(Lteam/opay/pay/transfer/SpiltOrderView;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
