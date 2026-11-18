.class public final Lteam/opay/pay/dagger/AppModule_ProvideAuthorizationErrorFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideAuthorizationErrorFactory.java"

# interfaces
.implements Lm3c;


# annotations
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

.method public static b()Lteam/opay/core/android/AuthorizationError;
    .locals 1

    .line 1
    sget-object v0, Lx10;->a:Lx10;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx10;->n()Lteam/opay/core/android/AuthorizationError;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lxwb;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lteam/opay/core/android/AuthorizationError;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public a()Lteam/opay/core/android/AuthorizationError;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/dagger/AppModule_ProvideAuthorizationErrorFactory;->b()Lteam/opay/core/android/AuthorizationError;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/dagger/AppModule_ProvideAuthorizationErrorFactory;->a()Lteam/opay/core/android/AuthorizationError;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
