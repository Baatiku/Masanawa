.class public final Lcashier/view/PayCountDownButton$a;
.super Ljava/lang/Object;
.source "PayCountDownButton.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/view/PayCountDownButton;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "cashier/view/PayCountDownButton$a",
        "Ljava/lang/Runnable;",
        "",
        "run",
        "()V",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcashier/view/PayCountDownButton;


# direct methods
.method public constructor <init>(Lcashier/view/PayCountDownButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/view/PayCountDownButton$a;->a:Lcashier/view/PayCountDownButton;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcashier/view/PayCountDownButton$a;->a:Lcashier/view/PayCountDownButton;

    .line 2
    .line 3
    invoke-static {v0}, Lcashier/view/PayCountDownButton;->a(Lcashier/view/PayCountDownButton;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcashier/view/PayCountDownButton$a;->a:Lcashier/view/PayCountDownButton;

    .line 10
    .line 11
    invoke-static {v0}, Lcashier/view/PayCountDownButton;->b(Lcashier/view/PayCountDownButton;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcashier/view/PayCountDownButton$a;->a:Lcashier/view/PayCountDownButton;

    .line 19
    .line 20
    invoke-static {v0}, Lcashier/view/PayCountDownButton;->a(Lcashier/view/PayCountDownButton;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcashier/view/PayCountDownButton;->d(Lcashier/view/PayCountDownButton;I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcashier/view/PayCountDownButton$a;->a:Lcashier/view/PayCountDownButton;

    .line 30
    .line 31
    invoke-static {v0}, Lcashier/view/PayCountDownButton;->e(Lcashier/view/PayCountDownButton;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcashier/view/PayCountDownButton$a;->a:Lcashier/view/PayCountDownButton;

    .line 36
    .line 37
    invoke-static {v0}, Lcashier/view/PayCountDownButton;->c(Lcashier/view/PayCountDownButton;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method
