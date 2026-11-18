.class public final Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;
.super Ljava/lang/Object;
.source "AsyncLayoutInflater.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/common/android/event/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InflateRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\t\u0008\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR$\u0010\u0012\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0019\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R$\u0010 \u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fRD\u0010(\u001a$\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0012\u0004\u0012\u00020\"\u0018\u00010!j\u0004\u0018\u0001`#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010$\u001a\u0004\u0008\u0005\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/core/common/android/event/AsyncLayoutInflater;",
        "a",
        "Lteam/opay/core/common/android/event/AsyncLayoutInflater;",
        "b",
        "()Lteam/opay/core/common/android/event/AsyncLayoutInflater;",
        "g",
        "(Lteam/opay/core/common/android/event/AsyncLayoutInflater;)V",
        "layoutInflater",
        "Landroid/view/ViewGroup;",
        "Landroid/view/ViewGroup;",
        "c",
        "()Landroid/view/ViewGroup;",
        "h",
        "(Landroid/view/ViewGroup;)V",
        "parent",
        "",
        "I",
        "d",
        "()I",
        "i",
        "(I)V",
        "resId",
        "Landroid/view/View;",
        "Landroid/view/View;",
        "e",
        "()Landroid/view/View;",
        "j",
        "(Landroid/view/View;)V",
        "view",
        "Lkotlin/Function3;",
        "",
        "Lteam/opay/core/common/android/event/onInflateFinished;",
        "Lhm6;",
        "()Lhm6;",
        "f",
        "(Lhm6;)V",
        "callback",
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
.field public a:Lteam/opay/core/common/android/event/AsyncLayoutInflater;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:I

.field public d:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lhm6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhm6<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/view/ViewGroup;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lhm6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhm6<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Landroid/view/ViewGroup;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->e:Lhm6;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lteam/opay/core/common/android/event/AsyncLayoutInflater;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->a:Lteam/opay/core/common/android/event/AsyncLayoutInflater;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->b:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final e()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->d:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(Lhm6;)V
    .locals 0
    .param p1    # Lhm6;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhm6<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/view/ViewGroup;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->e:Lhm6;

    .line 2
    .line 3
    return-void
.end method

.method public final g(Lteam/opay/core/common/android/event/AsyncLayoutInflater;)V
    .locals 0
    .param p1    # Lteam/opay/core/common/android/event/AsyncLayoutInflater;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->a:Lteam/opay/core/common/android/event/AsyncLayoutInflater;

    .line 2
    .line 3
    return-void
.end method

.method public final h(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->b:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-void
.end method

.method public final i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public final j(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->d:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method
