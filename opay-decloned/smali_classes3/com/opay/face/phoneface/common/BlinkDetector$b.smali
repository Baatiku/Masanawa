.class public Lcom/opay/face/phoneface/common/BlinkDetector$b;
.super Ljava/lang/Object;
.source "BlinkDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opay/face/phoneface/common/BlinkDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>([IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    aget v0, p1, v0

    .line 6
    .line 7
    iput v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector$b;->a:I

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    aget v0, p1, v0

    .line 11
    .line 12
    iput v0, p0, Lcom/opay/face/phoneface/common/BlinkDetector$b;->b:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    aget p1, p1, v0

    .line 16
    .line 17
    iput p1, p0, Lcom/opay/face/phoneface/common/BlinkDetector$b;->c:I

    .line 18
    .line 19
    iput-wide p2, p0, Lcom/opay/face/phoneface/common/BlinkDetector$b;->d:J

    .line 20
    .line 21
    return-void
.end method
