.class Lteam/opay/pay/spi/ServiceRegistry$132;
.super Ljava/lang/Object;
.source "ServiceRegistry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/spi/ServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/opay/team/newhome/home/MessageNumDelegate;",
        ">;"
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


# virtual methods
.method public call()Lcom/opay/team/newhome/home/MessageNumDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/opay/team/newhome/home/MessageNumDelegate;

    invoke-direct {v0}, Lcom/opay/team/newhome/home/MessageNumDelegate;-><init>()V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lteam/opay/pay/spi/ServiceRegistry$132;->call()Lcom/opay/team/newhome/home/MessageNumDelegate;

    move-result-object v0

    return-object v0
.end method
