.class final Lcashier/quickpay/QuickMethodManager$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "QuickMethodManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/quickpay/QuickMethodManager$1;->invoke(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "code",
        "",
        "message",
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
.field final synthetic $json:Lorg/json/JSONObject;

.field final synthetic this$0:Lcashier/quickpay/QuickMethodManager;


# direct methods
.method public constructor <init>(Lcashier/quickpay/QuickMethodManager;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/quickpay/QuickMethodManager$1$2;->this$0:Lcashier/quickpay/QuickMethodManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcashier/quickpay/QuickMethodManager$1$2;->$json:Lorg/json/JSONObject;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcashier/quickpay/QuickMethodManager$1$2;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcashier/quickpay/QuickMethodManager$1$2;->this$0:Lcashier/quickpay/QuickMethodManager;

    invoke-static {v0}, Lcashier/quickpay/QuickMethodManager;->a(Lcashier/quickpay/QuickMethodManager;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 3
    new-instance v1, Lcashier/quickpay/QuickMethodManager$1$2$1;

    iget-object v2, p0, Lcashier/quickpay/QuickMethodManager$1$2;->this$0:Lcashier/quickpay/QuickMethodManager;

    iget-object v3, p0, Lcashier/quickpay/QuickMethodManager$1$2;->$json:Lorg/json/JSONObject;

    invoke-direct {v1, v2, v3}, Lcashier/quickpay/QuickMethodManager$1$2$1;-><init>(Lcashier/quickpay/QuickMethodManager;Lorg/json/JSONObject;)V

    sget-object v2, Lcashier/quickpay/QuickMethodManager$1$2$2;->INSTANCE:Lcashier/quickpay/QuickMethodManager$1$2$2;

    invoke-static {v0, p1, p2, v1, v2}, Lcashier/ui/BasePayActivityKt;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
