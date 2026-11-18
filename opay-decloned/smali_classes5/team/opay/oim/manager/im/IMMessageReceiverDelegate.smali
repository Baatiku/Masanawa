.class public abstract Lteam/opay/oim/manager/im/IMMessageReceiverDelegate;
.super Ljava/lang/Object;
.source "IMMessageDelegate.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/oim/manager/im/IMMessageReceiverDelegate;",
        "Lteam/opay/KeepNoProguard;",
        "()V",
        "business",
        "",
        "receivedMessage",
        "",
        "messageData",
        "Lteam/opay/oim/manager/im/receiver/MessageData;",
        "oim_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
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
.method public abstract business()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract receivedMessage(Lteam/opay/oim/manager/im/receiver/MessageData;)V
    .param p1    # Lteam/opay/oim/manager/im/receiver/MessageData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
