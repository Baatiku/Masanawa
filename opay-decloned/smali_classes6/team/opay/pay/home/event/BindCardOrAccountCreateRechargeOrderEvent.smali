.class public final Lteam/opay/pay/home/event/BindCardOrAccountCreateRechargeOrderEvent;
.super Ljava/lang/Object;
.source "BindCardOrAccountCreateRechargeOrderEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0011\u001a\u0004\u0008\u0010\u0010\u0013R\"\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0011\u001a\u0004\u0008\u000c\u0010\u0013\"\u0004\u0008\u0015\u0010\u0016R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/pay/home/event/BindCardOrAccountCreateRechargeOrderEvent;",
        "",
        "",
        "isUseBankCard",
        "",
        "cardIdString",
        "cardCvvString",
        "bankCardPin",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "event",
        "<init>",
        "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/VerifyEvent;)V",
        "a",
        "Z",
        "e",
        "()Z",
        "b",
        "Ljava/lang/String;",
        "c",
        "()Ljava/lang/String;",
        "d",
        "setBankCardPin",
        "(Ljava/lang/String;)V",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "()Lteam/opay/pay/account/verify/VerifyEvent;",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/pay/account/verify/VerifyEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/VerifyEvent;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lteam/opay/pay/account/verify/VerifyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "cardIdString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bankCardPin"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lteam/opay/pay/home/event/BindCardOrAccountCreateRechargeOrderEvent;->a:Z

    iput-object p2, p0, Lteam/opay/pay/home/event/BindCardOrAccountCreateRechargeOrderEvent;->b:Ljava/lang/String;

    iput-object p3, p0, Lteam/opay/pay/home/event/BindCardOrAccountCreateRechargeOrderEvent;->c:Ljava/lang/String;

    iput-object p4, p0, Lteam/opay/pay/home/event/BindCardOrAccountCreateRechargeOrderEvent;->d:Ljava/lang/String;

    iput-object p5, p0, Lteam/opay/pay/home/event/BindCardOrAccountCreateRechargeOrderEvent;->e:Lteam/opay/pay/account/verify/VerifyEvent;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/VerifyEvent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 2
    const-string p4, ""

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/home/event/BindCardOrAccountCreateRechargeOrderEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/VerifyEvent;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/event/BindCardOrAccountCreateRechargeOrderEvent;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/event/BindCardOrAccountCreateRechargeOrderEvent;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/event/BindCardOrAccountCreateRechargeOrderEvent;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lteam/opay/pay/account/verify/VerifyEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/event/BindCardOrAccountCreateRechargeOrderEvent;->e:Lteam/opay/pay/account/verify/VerifyEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/event/BindCardOrAccountCreateRechargeOrderEvent;->a:Z

    .line 2
    .line 3
    return v0
.end method
