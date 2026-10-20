.class final Lcashier/quickpay/QuickPayActivity$loadInfo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "QuickPayActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/quickpay/QuickPayActivity;->O(Z)V
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
.field final synthetic $first:Z

.field final synthetic this$0:Lcashier/quickpay/QuickPayActivity;


# direct methods
.method public constructor <init>(ZLcashier/quickpay/QuickPayActivity;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcashier/quickpay/QuickPayActivity$loadInfo$2;->$first:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcashier/quickpay/QuickPayActivity$loadInfo$2;->this$0:Lcashier/quickpay/QuickPayActivity;

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

    invoke-virtual {p0, p1, p2}, Lcashier/quickpay/QuickPayActivity$loadInfo$2;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
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
    iget-boolean v0, p0, Lcashier/quickpay/QuickPayActivity$loadInfo$2;->$first:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcashier/quickpay/QuickPayActivity$loadInfo$2;->this$0:Lcashier/quickpay/QuickPayActivity;

    invoke-static {v0}, Lcashier/quickpay/QuickPayActivity;->E(Lcashier/quickpay/QuickPayActivity;)Lcashier/quickpay/QuickMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/quickpay/QuickMethodManager;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcashier/quickpay/QuickPayActivity$loadInfo$2;->this$0:Lcashier/quickpay/QuickPayActivity;

    invoke-static {v0}, Lcashier/quickpay/QuickPayActivity;->E(Lcashier/quickpay/QuickPayActivity;)Lcashier/quickpay/QuickMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcashier/quickpay/QuickMethodManager;->n()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcashier/quickpay/QuickPayActivity$loadInfo$2;->this$0:Lcashier/quickpay/QuickPayActivity;

    .line 5
    new-instance v1, Lcashier/quickpay/QuickPayActivity$loadInfo$2$1;

    iget-boolean v2, p0, Lcashier/quickpay/QuickPayActivity$loadInfo$2;->$first:Z

    invoke-direct {v1, v0, v2}, Lcashier/quickpay/QuickPayActivity$loadInfo$2$1;-><init>(Lcashier/quickpay/QuickPayActivity;Z)V

    new-instance v2, Lcashier/quickpay/QuickPayActivity$loadInfo$2$2;

    iget-boolean v3, p0, Lcashier/quickpay/QuickPayActivity$loadInfo$2;->$first:Z

    iget-object v4, p0, Lcashier/quickpay/QuickPayActivity$loadInfo$2;->this$0:Lcashier/quickpay/QuickPayActivity;

    invoke-direct {v2, v3, v4, p2}, Lcashier/quickpay/QuickPayActivity$loadInfo$2$2;-><init>(ZLcashier/quickpay/QuickPayActivity;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, v1, v2}, Lcashier/ui/BasePayActivityKt;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
