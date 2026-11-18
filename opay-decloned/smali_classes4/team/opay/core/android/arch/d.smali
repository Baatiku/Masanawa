.class public final synthetic Lteam/opay/core/android/arch/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/LiveData;

.field public final synthetic b:Lvfa;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Lvfa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/core/android/arch/d;->a:Landroidx/lifecycle/LiveData;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/core/android/arch/d;->b:Lvfa;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/d;->a:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/android/arch/d;->b:Lvfa;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lteam/opay/core/android/arch/ResourceKt$asResourceFlow$1;->c(Landroidx/lifecycle/LiveData;Lvfa;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
