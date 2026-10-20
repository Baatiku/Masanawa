.class public final Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;
.super Ljava/lang/Object;
.source "LockPatternIndicator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IndicatorCell"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0012\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\t\u001a\u0004\u0008\u0008\u0010\u000b\"\u0004\u0008\u0011\u0010\rR\"\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\t\u001a\u0004\u0008\u000e\u0010\u000b\"\u0004\u0008\u0012\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;",
        "",
        "",
        "x",
        "y",
        "index",
        "<init>",
        "(Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;III)V",
        "a",
        "I",
        "c",
        "()I",
        "f",
        "(I)V",
        "b",
        "d",
        "g",
        "setIndex",
        "e",
        "status",
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
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public final synthetic e:Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;


# direct methods
.method public constructor <init>(Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->e:Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->a:I

    .line 7
    .line 8
    iput p3, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->b:I

    .line 9
    .line 10
    iput p4, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->c:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public final f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->b:I

    .line 2
    .line 3
    return-void
.end method
