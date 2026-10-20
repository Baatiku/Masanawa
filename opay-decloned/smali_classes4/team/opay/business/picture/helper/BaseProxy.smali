.class public abstract Lteam/opay/business/picture/helper/BaseProxy;
.super Ljava/lang/Object;
.source "ProxyFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008 \u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\u000c\u001a\n \n*\u0004\u0018\u00010\t0\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u000bR$\u0010\u0012\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\r\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/business/picture/helper/BaseProxy;",
        "",
        "<init>",
        "()V",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Lteam/opay/business/picture/helper/ProxyFragment;",
        "a",
        "(Landroidx/fragment/app/FragmentActivity;)Lteam/opay/business/picture/helper/ProxyFragment;",
        "",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/String;",
        "tag",
        "b",
        "Lteam/opay/business/picture/helper/ProxyFragment;",
        "()Lteam/opay/business/picture/helper/ProxyFragment;",
        "c",
        "(Lteam/opay/business/picture/helper/ProxyFragment;)V",
        "proxyFragment",
        "business-picture_release"
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
.field public final a:Ljava/lang/String;

.field public b:Lteam/opay/business/picture/helper/ProxyFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lteam/opay/business/picture/helper/ProxyFragment;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lteam/opay/business/picture/helper/BaseProxy;->a:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentActivity;)Lteam/opay/business/picture/helper/ProxyFragment;
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "getSupportFragmentManager(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/business/picture/helper/BaseProxy;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->l0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v1, v0, Lteam/opay/business/picture/helper/ProxyFragment;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    check-cast v0, Lteam/opay/business/picture/helper/ProxyFragment;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    iput-object v0, p0, Lteam/opay/business/picture/helper/BaseProxy;->b:Lteam/opay/business/picture/helper/ProxyFragment;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance v0, Lteam/opay/business/picture/helper/ProxyFragment;

    .line 34
    .line 35
    invoke-direct {v0}, Lteam/opay/business/picture/helper/ProxyFragment;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lteam/opay/business/picture/helper/BaseProxy;->b:Lteam/opay/business/picture/helper/ProxyFragment;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v1, p0, Lteam/opay/business/picture/helper/BaseProxy;->a:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->l()V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-object v0
.end method

.method public final b()Lteam/opay/business/picture/helper/ProxyFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/helper/BaseProxy;->b:Lteam/opay/business/picture/helper/ProxyFragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Lteam/opay/business/picture/helper/ProxyFragment;)V
    .locals 0
    .param p1    # Lteam/opay/business/picture/helper/ProxyFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/helper/BaseProxy;->b:Lteam/opay/business/picture/helper/ProxyFragment;

    .line 2
    .line 3
    return-void
.end method
