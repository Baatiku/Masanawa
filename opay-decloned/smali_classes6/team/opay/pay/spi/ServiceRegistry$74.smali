.class Lteam/opay/pay/spi/ServiceRegistry$74;
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
        "Lteam/opay/pay/oshare/inter/impl/WhatsAppImpl;",
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
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/spi/ServiceRegistry$74;->call()Lteam/opay/pay/oshare/inter/impl/WhatsAppImpl;

    move-result-object v0

    return-object v0
.end method

.method public call()Lteam/opay/pay/oshare/inter/impl/WhatsAppImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Lteam/opay/pay/oshare/inter/impl/WhatsAppImpl;

    invoke-direct {v0}, Lteam/opay/pay/oshare/inter/impl/WhatsAppImpl;-><init>()V

    return-object v0
.end method
