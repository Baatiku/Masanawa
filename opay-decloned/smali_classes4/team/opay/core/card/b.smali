.class public final synthetic Lteam/opay/core/card/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lteam/opay/core/card/CardFragment;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/core/card/CardFragment;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/core/card/b;->a:Lteam/opay/core/card/CardFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/core/card/b;->b:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/b;->a:Lteam/opay/core/card/CardFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/card/b;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;->f(Lteam/opay/core/card/CardFragment;Lkotlin/jvm/functions/Function1;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
