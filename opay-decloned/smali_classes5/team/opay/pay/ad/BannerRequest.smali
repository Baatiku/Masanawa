.class public abstract Lteam/opay/pay/ad/BannerRequest;
.super Ljava/lang/Object;
.source "BannerRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/ad/BannerRequest$State;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008 \u0018\u00002\u00020\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0008\u0010\tR\"\u0010\u0010\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/pay/ad/BannerRequest;",
        "",
        "<init>",
        "()V",
        "",
        "a",
        "b",
        "",
        "d",
        "()Z",
        "Lteam/opay/pay/ad/BannerRequest$State;",
        "Lteam/opay/pay/ad/BannerRequest$State;",
        "c",
        "()Lteam/opay/pay/ad/BannerRequest$State;",
        "setCurrentState",
        "(Lteam/opay/pay/ad/BannerRequest$State;)V",
        "currentState",
        "State",
        "advertisement_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Lteam/opay/pay/ad/BannerRequest$State;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lteam/opay/pay/ad/BannerRequest$State;->INIT:Lteam/opay/pay/ad/BannerRequest$State;

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/pay/ad/BannerRequest;->a:Lteam/opay/pay/ad/BannerRequest$State;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public final c()Lteam/opay/pay/ad/BannerRequest$State;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/BannerRequest;->a:Lteam/opay/pay/ad/BannerRequest$State;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract d()Z
.end method
