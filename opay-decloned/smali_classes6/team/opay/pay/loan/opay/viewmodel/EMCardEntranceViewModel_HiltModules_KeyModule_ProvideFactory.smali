.class public final Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_HiltModules_KeyModule_ProvideFactory;
.super Ljava/lang/Object;
.source "EMCardEntranceViewModel_HiltModules_KeyModule_ProvideFactory.java"

# interfaces
.implements Lm3c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_HiltModules_KeyModule_ProvideFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm3c;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static create()Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_HiltModules_KeyModule_ProvideFactory;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_HiltModules_KeyModule_ProvideFactory$InstanceHolder;->INSTANCE:Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_HiltModules_KeyModule_ProvideFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public static provide()Z
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_HiltModules$KeyModule;->provide()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 1

    .line 2
    invoke-static {}, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_HiltModules_KeyModule_ProvideFactory;->provide()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_HiltModules_KeyModule_ProvideFactory;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
