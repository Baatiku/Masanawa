.class public final Lteam/opay/core/http/arch/AppExecutors_Factory;
.super Ljava/lang/Object;
.source "AppExecutors_Factory.java"

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

.method public static b()Lteam/opay/core/http/arch/AppExecutors;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/http/arch/AppExecutors;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/core/http/arch/AppExecutors;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Lteam/opay/core/http/arch/AppExecutors;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/http/arch/AppExecutors_Factory;->b()Lteam/opay/core/http/arch/AppExecutors;

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
    invoke-virtual {p0}, Lteam/opay/core/http/arch/AppExecutors_Factory;->a()Lteam/opay/core/http/arch/AppExecutors;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
