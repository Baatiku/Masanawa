.class public final Lteam/opay/pay/history/details/pdf/NewPdfTitleViewHolder;
.super Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;
.source "NewPdfTitleViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/pay/history/details/pdf/NewPdfTitleViewHolder;",
        "Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;",
        "Landroid/view/View;",
        "itemView",
        "",
        "fromShare",
        "<init>",
        "(Landroid/view/View;Z)V",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;",
        "receiptResponse",
        "",
        "b",
        "(Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;)V",
        "g",
        "Z",
        "Lm0f;",
        "h",
        "Lm0f;",
        "binding",
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
.field public final g:Z

.field public final h:Lm0f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "itemView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;-><init>(Landroid/view/View;Z)V

    .line 7
    .line 8
    .line 9
    iput-boolean p2, p0, Lteam/opay/pay/history/details/pdf/NewPdfTitleViewHolder;->g:Z

    .line 10
    .line 11
    invoke-static {p1}, Lm0f;->bind(Landroid/view/View;)Lm0f;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "bind(...)"

    .line 16
    .line 17
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lteam/opay/pay/history/details/pdf/NewPdfTitleViewHolder;->h:Lm0f;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final b(Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;)V
    .locals 4
    .param p1    # Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "receiptResponse"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/NewPdfTitleViewHolder;->h:Lm0f;

    .line 10
    .line 11
    iget-object v0, v0, Lm0f;->b:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-static {v1, v2, v3, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toText$default(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/NewPdfTitleViewHolder;->h:Lm0f;

    .line 29
    .line 30
    iget-object v0, v0, Lm0f;->g:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;->c()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/NewPdfTitleViewHolder;->h:Lm0f;

    .line 40
    .line 41
    iget-object v0, v0, Lm0f;->f:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
