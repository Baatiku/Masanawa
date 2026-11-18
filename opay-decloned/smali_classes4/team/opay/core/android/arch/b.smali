.class public final synthetic Lteam/opay/core/android/arch/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/core/android/arch/b;->a:Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/b;->a:Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource$postSuccess$2;->c(Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;Ljava/lang/Object;)Lkotlin/Unit;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
