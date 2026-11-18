.class final Lcashier/ui/PayWebAuthFragment$showWebAuth$1$scriptInterface$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PayWebAuthFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/ui/PayWebAuthFragment;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic this$0:Lcashier/ui/PayWebAuthFragment;


# direct methods
.method public constructor <init>(Lcashier/ui/PayWebAuthFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/ui/PayWebAuthFragment$showWebAuth$1$scriptInterface$1;->this$0:Lcashier/ui/PayWebAuthFragment;

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
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcashier/ui/PayWebAuthFragment$showWebAuth$1$scriptInterface$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcashier/ui/PayWebAuthFragment$showWebAuth$1$scriptInterface$1;->this$0:Lcashier/ui/PayWebAuthFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcashier/ui/PayWebAuthFragment;->N(Lcashier/ui/PayWebAuthFragment;Z)V

    .line 3
    iget-object v0, p0, Lcashier/ui/PayWebAuthFragment$showWebAuth$1$scriptInterface$1;->this$0:Lcashier/ui/PayWebAuthFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcashier/ui/PayWebAuthFragment;->R(Lcashier/ui/PayWebAuthFragment;ZILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcashier/ui/PayWebAuthFragment$showWebAuth$1$scriptInterface$1;->this$0:Lcashier/ui/PayWebAuthFragment;

    invoke-virtual {v0}, Lcashier/ui/PayWebAuthFragment;->S()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v0, p0, Lcashier/ui/PayWebAuthFragment$showWebAuth$1$scriptInterface$1;->this$0:Lcashier/ui/PayWebAuthFragment;

    invoke-static {v0}, Lcashier/ui/PayWebAuthFragment;->L(Lcashier/ui/PayWebAuthFragment;)V

    return-void
.end method
