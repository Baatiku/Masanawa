.class public final synthetic Lteam/opay/core/card/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lteam/opay/core/card/CardFragment;

.field public final synthetic c:Lteam/opay/core/card/GridLayoutManagerNotifyComolete;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lteam/opay/core/card/CardFragment;Lteam/opay/core/card/GridLayoutManagerNotifyComolete;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/core/card/a;->a:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/core/card/a;->b:Lteam/opay/core/card/CardFragment;

    .line 7
    .line 8
    iput-object p3, p0, Lteam/opay/core/card/a;->c:Lteam/opay/core/card/GridLayoutManagerNotifyComolete;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/a;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/card/a;->b:Lteam/opay/core/card/CardFragment;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/card/a;->c:Lteam/opay/core/card/GridLayoutManagerNotifyComolete;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;->c(Lkotlin/jvm/functions/Function1;Lteam/opay/core/card/CardFragment;Lteam/opay/core/card/GridLayoutManagerNotifyComolete;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
