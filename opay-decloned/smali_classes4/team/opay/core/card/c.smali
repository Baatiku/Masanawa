.class public final synthetic Lteam/opay/core/card/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lteam/opay/core/card/NewPhysicalCardFragment;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lteam/opay/core/card/NewPhysicalCardFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/core/card/c;->a:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/core/card/c;->b:Lteam/opay/core/card/NewPhysicalCardFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/c;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/card/c;->b:Lteam/opay/core/card/NewPhysicalCardFragment;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lteam/opay/core/card/NewPhysicalCardFragment$getCardLocationHeight$1$1;->c(Lkotlin/jvm/functions/Function1;Lteam/opay/core/card/NewPhysicalCardFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
