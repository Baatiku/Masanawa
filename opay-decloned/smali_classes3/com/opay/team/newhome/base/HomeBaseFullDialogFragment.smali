.class public abstract Lcom/opay/team/newhome/base/HomeBaseFullDialogFragment;
.super Lteam/opay/core/base/BaseFullDialogFragmentV2;
.source "HomeBaseFullDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Lxyf;",
        ">",
        "Lteam/opay/core/base/BaseFullDialogFragmentV2<",
        "TVB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B)\u0012 \u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R.\u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/opay/team/newhome/base/HomeBaseFullDialogFragment;",
        "Lxyf;",
        "VB",
        "Lteam/opay/core/base/BaseFullDialogFragmentV2;",
        "Lkotlin/Function3;",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "",
        "inflate",
        "<init>",
        "(Lhm6;)V",
        "Lteam/opay/pay/home/MainActivity$Tab;",
        "R",
        "()Lteam/opay/pay/home/MainActivity$Tab;",
        "",
        "onResume",
        "()V",
        "m",
        "Lhm6;",
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
.field public final m:Lhm6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhm6<",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Boolean;",
            "TVB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhm6;)V
    .locals 1
    .param p1    # Lhm6;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhm6<",
            "-",
            "Landroid/view/LayoutInflater;",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Ljava/lang/Boolean;",
            "+TVB;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "inflate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/core/base/BaseFullDialogFragmentV2;-><init>(Lhm6;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/opay/team/newhome/base/HomeBaseFullDialogFragment;->m:Lhm6;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract R()Lteam/opay/pay/home/MainActivity$Tab;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public onResume()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v0, v0, Lteam/opay/pay/home/MainActivity;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v4, Lcom/opay/team/newhome/base/HomeBaseFullDialogFragment$onResume$1;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-direct {v4, p0, v0}, Lcom/opay/team/newhome/base/HomeBaseFullDialogFragment$onResume$1;-><init>(Lcom/opay/team/newhome/base/HomeBaseFullDialogFragment;Ljr2;)V

    .line 24
    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
