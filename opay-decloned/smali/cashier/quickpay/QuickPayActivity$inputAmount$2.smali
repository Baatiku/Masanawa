.class final Lcashier/quickpay/QuickPayActivity$inputAmount$2;
.super Lkotlin/jvm/internal/Lambda;
.source "QuickPayActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/quickpay/QuickPayActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcashier/util/CurrencyAmount;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcashier/util/CurrencyAmount;",
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
.field final synthetic this$0:Lcashier/quickpay/QuickPayActivity;


# direct methods
.method public constructor <init>(Lcashier/quickpay/QuickPayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/quickpay/QuickPayActivity$inputAmount$2;->this$0:Lcashier/quickpay/QuickPayActivity;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Lcashier/util/CurrencyAmount;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    sget-object v0, Lcashier/util/CurrencyAmount;->Companion:Lcashier/util/CurrencyAmount$Companion;

    .line 3
    iget-object v1, p0, Lcashier/quickpay/QuickPayActivity$inputAmount$2;->this$0:Lcashier/quickpay/QuickPayActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "pay_amount"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    .line 4
    :cond_1
    invoke-virtual {v0, v1}, Lcashier/util/CurrencyAmount$Companion;->b(Ljava/lang/String;)Lcashier/util/CurrencyAmount;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcashier/quickpay/QuickPayActivity$inputAmount$2;->invoke()Lcashier/util/CurrencyAmount;

    move-result-object v0

    return-object v0
.end method
