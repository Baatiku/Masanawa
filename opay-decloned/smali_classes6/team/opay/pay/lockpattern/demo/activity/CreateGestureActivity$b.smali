.class public final Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$b;
.super Ljava/lang/Object;
.source "CreateGestureActivity.kt"

# interfaces
.implements Lteam/opay/pay/lockpattern/widget/LockPatternView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\t\u001a\u00020\u00022\u0010\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u00060\u0006R\u00020\u00070\u0005H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "team/opay/pay/lockpattern/demo/activity/CreateGestureActivity$b",
        "Lteam/opay/pay/lockpattern/widget/LockPatternView$a;",
        "",
        "a",
        "()V",
        "",
        "Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;",
        "Lteam/opay/pay/lockpattern/widget/LockPatternView;",
        "cells",
        "b",
        "(Ljava/util/List;)V",
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
.field public final synthetic a:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$b;->a:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$b;->a:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;->F()Lqe;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lqe;->d:Lteam/opay/pay/lockpattern/widget/LockPatternView;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->w()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$b;->a:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;

    .line 13
    .line 14
    invoke-virtual {v0}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;->F()Lqe;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lqe;->d:Lteam/opay/pay/lockpattern/widget/LockPatternView;

    .line 19
    .line 20
    sget-object v1, Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;->DEFAULT:Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->setPattern(Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "cells"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$b;->a:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;->C(Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x4

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lt v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$b;->a:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;->D(Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$b;->a:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;

    .line 32
    .line 33
    sget-object v1, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->CORRECT:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 34
    .line 35
    invoke-static {v0, v1, p1}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;->E(Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$b;->a:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;

    .line 40
    .line 41
    invoke-static {v0}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;->C(Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ge v0, v1, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$b;->a:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;

    .line 54
    .line 55
    sget-object v1, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->LESS_ERROR:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 56
    .line 57
    invoke-static {v0, v1, p1}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;->E(Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$b;->a:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;

    .line 62
    .line 63
    invoke-static {v0}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;->C(Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    iget-object v0, p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$b;->a:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;

    .line 70
    .line 71
    invoke-static {v0}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;->C(Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$b;->a:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;

    .line 82
    .line 83
    sget-object v1, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->CONFIRM_CORRECT:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 84
    .line 85
    invoke-static {v0, v1, p1}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;->E(Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;Ljava/util/List;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$b;->a:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;

    .line 90
    .line 91
    sget-object v1, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->CONFIRM_ERROR:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 92
    .line 93
    invoke-static {v0, v1, p1}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;->E(Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_0
    return-void
.end method
