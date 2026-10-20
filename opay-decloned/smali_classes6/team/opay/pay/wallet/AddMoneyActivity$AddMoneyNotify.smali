.class public final Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotify;
.super Ljava/lang/Object;
.source "AddMoneyActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/wallet/AddMoneyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddMoneyNotify"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0006\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotify;",
        "",
        "Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotifyFrom;",
        "from",
        "<init>",
        "(Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotifyFrom;)V",
        "a",
        "Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotifyFrom;",
        "()Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotifyFrom;",
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
.field public final a:Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotifyFrom;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotify;-><init>(Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotifyFrom;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotifyFrom;)V
    .locals 0
    .param p1    # Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotifyFrom;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotify;->a:Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotifyFrom;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotifyFrom;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotify;-><init>(Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotifyFrom;)V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotifyFrom;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotify;->a:Lteam/opay/pay/wallet/AddMoneyActivity$AddMoneyNotifyFrom;

    .line 2
    .line 3
    return-object v0
.end method
