.class public final Lteam/opay/opb/common/binding/view/FragmentViewDelegate$a;
.super Ljava/lang/Object;
.source "FragmentViewDelegate.kt"

# interfaces
.implements Lq43;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/common/binding/view/FragmentViewDelegate;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/opb/common/binding/view/FragmentViewDelegate$a",
        "Lq43;",
        "Lag8;",
        "owner",
        "",
        "onDestroy",
        "(Lag8;)V",
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
.field public final synthetic a:Lteam/opay/opb/common/binding/view/FragmentViewDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/opb/common/binding/view/FragmentViewDelegate<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/opb/common/binding/view/FragmentViewDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/common/binding/view/FragmentViewDelegate<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/opb/common/binding/view/FragmentViewDelegate$a;->a:Lteam/opay/opb/common/binding/view/FragmentViewDelegate;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic m(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->a(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDestroy(Lag8;)V
    .locals 2

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/common/binding/view/FragmentViewDelegate$a;->a:Lteam/opay/opb/common/binding/view/FragmentViewDelegate;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lteam/opay/opb/common/binding/view/FragmentViewDelegate;->f(Lteam/opay/opb/common/binding/view/FragmentViewDelegate;Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/opb/common/binding/view/FragmentViewDelegate$a;->a:Lteam/opay/opb/common/binding/view/FragmentViewDelegate;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Lteam/opay/opb/common/binding/view/FragmentViewDelegate;->e(Lteam/opay/opb/common/binding/view/FragmentViewDelegate;Lxyf;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Lzf8;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public synthetic onPause(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->c(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onResume(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->d(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onStart(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->e(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onStop(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->f(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
