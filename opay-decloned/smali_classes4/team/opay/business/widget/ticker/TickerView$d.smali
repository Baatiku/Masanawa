.class public final Lteam/opay/business/widget/ticker/TickerView$d;
.super Ljava/lang/Object;
.source "TickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/widget/ticker/TickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J

.field public final d:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLandroid/view/animation/Interpolator;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/business/widget/ticker/TickerView$d;->a:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lteam/opay/business/widget/ticker/TickerView$d;->b:J

    .line 5
    iput-wide p4, p0, Lteam/opay/business/widget/ticker/TickerView$d;->c:J

    .line 6
    iput-object p6, p0, Lteam/opay/business/widget/ticker/TickerView$d;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JJLandroid/view/animation/Interpolator;Lske;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lteam/opay/business/widget/ticker/TickerView$d;-><init>(Ljava/lang/String;JJLandroid/view/animation/Interpolator;)V

    return-void
.end method
