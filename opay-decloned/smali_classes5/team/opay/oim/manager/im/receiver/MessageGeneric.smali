.class public Lteam/opay/oim/manager/im/receiver/MessageGeneric;
.super Ljava/lang/Object;
.source "MessageData.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lteam/opay/KeepNoProguard;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\t\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u00022\u00020\u0003B\u001d\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/oim/manager/im/receiver/MessageGeneric;",
        "T",
        "",
        "Lteam/opay/KeepNoProguard;",
        "",
        "topic",
        "Lteam/opay/oim/manager/im/receiver/MessageDetailGeneric;",
        "data",
        "<init>",
        "(Ljava/lang/String;Lteam/opay/oim/manager/im/receiver/MessageDetailGeneric;)V",
        "",
        "payload",
        "()[B",
        "Ljava/lang/String;",
        "getTopic",
        "()Ljava/lang/String;",
        "Lteam/opay/oim/manager/im/receiver/MessageDetailGeneric;",
        "getData",
        "()Lteam/opay/oim/manager/im/receiver/MessageDetailGeneric;",
        "oim_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final data:Lteam/opay/oim/manager/im/receiver/MessageDetailGeneric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/oim/manager/im/receiver/MessageDetailGeneric<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final topic:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lteam/opay/oim/manager/im/receiver/MessageDetailGeneric;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/oim/manager/im/receiver/MessageDetailGeneric;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/oim/manager/im/receiver/MessageDetailGeneric<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "topic"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/oim/manager/im/receiver/MessageGeneric;->topic:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/oim/manager/im/receiver/MessageGeneric;->data:Lteam/opay/oim/manager/im/receiver/MessageDetailGeneric;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getData()Lteam/opay/oim/manager/im/receiver/MessageDetailGeneric;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/oim/manager/im/receiver/MessageDetailGeneric<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/oim/manager/im/receiver/MessageGeneric;->data:Lteam/opay/oim/manager/im/receiver/MessageDetailGeneric;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTopic()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/oim/manager/im/receiver/MessageGeneric;->topic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public payload()[B
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/oim/manager/im/receiver/MessageGeneric;->data:Lteam/opay/oim/manager/im/receiver/MessageDetailGeneric;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "Gson().toJson(data)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "(this as java.lang.String).getBytes(charset)"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    .line 32
    .line 33
    const-string v1, "null cannot be cast to non-null type java.lang.String"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method
