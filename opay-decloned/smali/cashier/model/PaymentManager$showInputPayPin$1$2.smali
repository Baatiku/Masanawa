.class final Lcashier/model/PaymentManager$showInputPayPin$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/model/PaymentManager;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "paymentPin",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcashier/model/PaymentManager;


# direct methods
.method public constructor <init>(Lcashier/model/PaymentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/model/PaymentManager$showInputPayPin$1$2;->this$0:Lcashier/model/PaymentManager;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcashier/model/PaymentManager$showInputPayPin$1$2;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paymentPin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcashier/model/PaymentManager$showInputPayPin$1$2;->this$0:Lcashier/model/PaymentManager;

    invoke-static {v0}, Lcashier/model/PaymentManager;->e(Lcashier/model/PaymentManager;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/data/ConfirmPayReq;->f()Lcashier/data/VerifyReqInfo;

    move-result-object v0

    const-string v1, "pin"

    invoke-virtual {v0, v1}, Lcashier/data/VerifyReqInfo;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcashier/model/PaymentManager$showInputPayPin$1$2;->this$0:Lcashier/model/PaymentManager;

    invoke-static {v0}, Lcashier/model/PaymentManager;->e(Lcashier/model/PaymentManager;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/data/ConfirmPayReq;->f()Lcashier/data/VerifyReqInfo;

    move-result-object v0

    .line 4
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string p1, "encodeToString(paymentPi\u2026Array(), Base64.URL_SAFE)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 5
    const-string v3, "\n"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lcashier/data/VerifyReqInfo;->c(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcashier/model/PaymentManager$showInputPayPin$1$2;->this$0:Lcashier/model/PaymentManager;

    invoke-static {p1}, Lcashier/model/PaymentManager;->m(Lcashier/model/PaymentManager;)V

    return-void
.end method
