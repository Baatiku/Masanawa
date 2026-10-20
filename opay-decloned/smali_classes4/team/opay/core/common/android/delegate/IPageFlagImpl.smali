.class public final Lteam/opay/core/common/android/delegate/IPageFlagImpl;
.super Ljava/lang/Object;
.source "IPageFlag.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\u000b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\t\u0012\u0004\u0008\n\u0010\u0003\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/core/common/android/delegate/IPageFlagImpl;",
        "",
        "<init>",
        "()V",
        "",
        "flags",
        "",
        "a",
        "(J)Z",
        "J",
        "getMFlags$annotations",
        "mFlags",
        "common-base_release"
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
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0xffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lteam/opay/core/common/android/delegate/IPageFlagImpl;->a:J

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lteam/opay/core/common/android/delegate/IPageFlagImpl;->a:J

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    cmp-long v2, v0, p1

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method
