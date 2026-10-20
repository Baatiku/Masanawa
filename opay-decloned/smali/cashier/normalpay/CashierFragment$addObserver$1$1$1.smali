.class final Lcashier/normalpay/CashierFragment$addObserver$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CashierFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/normalpay/CashierFragment$addObserver$1;->invoke(Ljava/util/List;)V
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
        "url",
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
.field final synthetic this$0:Lcashier/normalpay/CashierFragment;


# direct methods
.method public constructor <init>(Lcashier/normalpay/CashierFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/normalpay/CashierFragment$addObserver$1$1$1;->this$0:Lcashier/normalpay/CashierFragment;

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

    invoke-virtual {p0, p1}, Lcashier/normalpay/CashierFragment$addObserver$1$1$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcashier/normalpay/CashierFragment$addObserver$1$1$1;->this$0:Lcashier/normalpay/CashierFragment;

    invoke-static {v0}, Lcashier/normalpay/CashierFragment;->G(Lcashier/normalpay/CashierFragment;)Lcashier/model/CashierViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcashier/SchemeType;->AD:Lcashier/SchemeType;

    sget-object v2, Lcashier/normalpay/CashierFragment$addObserver$1$1$1$1;->INSTANCE:Lcashier/normalpay/CashierFragment$addObserver$1$1$1$1;

    invoke-interface {v0, v1, p1, v2}, Lcashier/CashierDelegate;->openScheme(Lcashier/SchemeType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method
