.class public final Lteam/opay/opb/common/binding/view/ViewGroupViewDelegate;
.super Ljava/lang/Object;
.source "ViewGroupViewDelegate.kt"

# interfaces
.implements Lvcc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lxyf;",
        ">",
        "Ljava/lang/Object;",
        "Lvcc<",
        "Landroid/view/ViewGroup;",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0003B)\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bJ$\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00020\u00042\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0096\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0015R\u0014\u0010\u0018\u001a\u00028\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/opb/common/binding/view/ViewGroupViewDelegate;",
        "Lxyf;",
        "T",
        "Lvcc;",
        "Landroid/view/ViewGroup;",
        "Ljava/lang/Class;",
        "clazz",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "viewGroup",
        "<init>",
        "(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V",
        "thisRef",
        "Lzo7;",
        "property",
        "c",
        "(Landroid/view/ViewGroup;Lzo7;)Lxyf;",
        "a",
        "Ljava/lang/Class;",
        "b",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "d",
        "Lxyf;",
        "viewBinding",
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
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/view/LayoutInflater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Lxyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "clazz"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "inflater"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/opb/common/binding/view/ViewGroupViewDelegate;->a:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Lteam/opay/opb/common/binding/view/ViewGroupViewDelegate;->b:Landroid/view/LayoutInflater;

    .line 4
    iput-object p3, p0, Lteam/opay/opb/common/binding/view/ViewGroupViewDelegate;->c:Landroid/view/ViewGroup;

    .line 5
    const-string v2, "null cannot be cast to non-null type T of team.opay.opb.common.binding.view.ViewGroupViewDelegate"

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 6
    invoke-static {p1}, Lgic;->c(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p3, 0x2

    aput-object p2, v4, p3

    invoke-virtual {p1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lxyf;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lgic;->b(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-virtual {p1, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lxyf;

    .line 8
    :goto_0
    iput-object p1, p0, Lteam/opay/opb/common/binding/view/ViewGroupViewDelegate;->d:Lxyf;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/opb/common/binding/view/ViewGroupViewDelegate;-><init>(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lzo7;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/common/binding/view/ViewGroupViewDelegate;->c(Landroid/view/ViewGroup;Lzo7;)Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c(Landroid/view/ViewGroup;Lzo7;)Lxyf;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzo7;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lzo7<",
            "*>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "thisRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "property"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/opb/common/binding/view/ViewGroupViewDelegate;->d:Lxyf;

    .line 12
    .line 13
    return-object p1
.end method
