.class public final Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;
.super Ljava/lang/Object;
.source "DialogShowHelper.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DialogCache"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;",
        "Ljava/io/Serializable;",
        "time",
        "",
        "count",
        "",
        "<init>",
        "(JI)V",
        "getTime",
        "()J",
        "setTime",
        "(J)V",
        "getCount",
        "()I",
        "setCount",
        "(I)V",
        "sme-va_release"
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
.field private count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field private time:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;-><init>(JIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;->time:J

    .line 4
    iput p3, p0, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;->count:I

    return-void
.end method

.method public synthetic constructor <init>(JIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;->count:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;->count:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;->time:J

    .line 2
    .line 3
    return-void
.end method
