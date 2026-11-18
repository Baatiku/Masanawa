.class public final Lteam/opay/core/api/AddMoneyItem;
.super Ljava/lang/Object;
.source "PaymentInstruments.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0018\u00002\u00020\u0001B%\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\n\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0015\u001a\u0004\u0008\u000f\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/core/api/AddMoneyItem;",
        "",
        "Lteam/opay/core/api/b;",
        "instrument",
        "",
        "type",
        "",
        "select",
        "<init>",
        "(Lteam/opay/core/api/b;IZ)V",
        "a",
        "Lteam/opay/core/api/b;",
        "()Lteam/opay/core/api/b;",
        "setInstrument",
        "(Lteam/opay/core/api/b;)V",
        "b",
        "I",
        "c",
        "()I",
        "setType",
        "(I)V",
        "Z",
        "()Z",
        "setSelect",
        "(Z)V",
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
.field public a:Lteam/opay/core/api/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>(Lteam/opay/core/api/b;IZ)V
    .locals 0
    .param p1    # Lteam/opay/core/api/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/core/api/AddMoneyItem;->a:Lteam/opay/core/api/b;

    .line 3
    iput p2, p0, Lteam/opay/core/api/AddMoneyItem;->b:I

    .line 4
    iput-boolean p3, p0, Lteam/opay/core/api/AddMoneyItem;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/core/api/b;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/core/api/AddMoneyItem;-><init>(Lteam/opay/core/api/b;IZ)V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/core/api/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/AddMoneyItem;->a:Lteam/opay/core/api/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/api/AddMoneyItem;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/api/AddMoneyItem;->b:I

    .line 2
    .line 3
    return v0
.end method
