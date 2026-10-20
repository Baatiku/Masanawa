.class final Lcashier/quickpay/QuickPayActivity$methodManager$2;
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
        "Lcashier/quickpay/QuickMethodManager;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcashier/quickpay/QuickMethodManager;",
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
    iput-object p1, p0, Lcashier/quickpay/QuickPayActivity$methodManager$2;->this$0:Lcashier/quickpay/QuickPayActivity;

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
.method public final invoke()Lcashier/quickpay/QuickMethodManager;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcashier/quickpay/QuickMethodManager;

    iget-object v1, p0, Lcashier/quickpay/QuickPayActivity$methodManager$2;->this$0:Lcashier/quickpay/QuickPayActivity;

    invoke-virtual {v1}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    move-result-object v2

    new-instance v3, Lcashier/quickpay/QuickPayActivity$methodManager$2$1;

    iget-object v4, p0, Lcashier/quickpay/QuickPayActivity$methodManager$2;->this$0:Lcashier/quickpay/QuickPayActivity;

    invoke-direct {v3, v4}, Lcashier/quickpay/QuickPayActivity$methodManager$2$1;-><init>(Lcashier/quickpay/QuickPayActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcashier/quickpay/QuickMethodManager;-><init>(Landroidx/fragment/app/FragmentActivity;Lcashier/model/CashierViewModel;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcashier/quickpay/QuickPayActivity$methodManager$2;->invoke()Lcashier/quickpay/QuickMethodManager;

    move-result-object v0

    return-object v0
.end method
