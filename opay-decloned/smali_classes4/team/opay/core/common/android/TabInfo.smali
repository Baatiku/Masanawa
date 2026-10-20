.class public final Lteam/opay/core/common/android/TabInfo;
.super Ljava/lang/Object;
.source "TabsAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u001d\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u0019\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\u000cJ\u000f\u0010\r\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR&\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001b\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0018\u0010\"\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010!R$\u0010(\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008\u0019\u0010&\"\u0004\u0008\u0007\u0010\'R\"\u0010-\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010)\u001a\u0004\u0008*\u0010\u0015\"\u0004\u0008+\u0010,R$\u00102\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010/\u001a\u0004\u0008$\u0010\u0018\"\u0004\u00080\u00101R(\u00107\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u00080\u0010)\u0012\u0004\u00085\u00106\u001a\u0004\u00083\u0010\u0015\"\u0004\u00084\u0010,R(\u0010<\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u00088\u0010/\u0012\u0004\u0008;\u00106\u001a\u0004\u00089\u0010\u0018\"\u0004\u0008:\u00101R\"\u0010@\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010/\u001a\u0004\u0008>\u0010\u0018\"\u0004\u0008?\u00101R2\u0010H\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00160A8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR.\u0010L\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130A8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008I\u0010C\u001a\u0004\u0008J\u0010E\"\u0004\u0008K\u0010GR2\u0010P\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00160A8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008M\u0010C\u001a\u0004\u0008N\u0010E\"\u0004\u0008O\u0010GR\"\u0010T\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Q\u0010)\u001a\u0004\u0008R\u0010\u0015\"\u0004\u0008S\u0010,R.\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0008\u0010U\u001a\u0004\u0018\u00010\u00068F@FX\u0087\u000e\u00a2\u0006\u0012\u0012\u0004\u0008W\u00106\u001a\u0004\u0008 \u0010\u000e\"\u0004\u0008.\u0010V\u00a8\u0006X"
    }
    d2 = {
        "Lteam/opay/core/common/android/TabInfo;",
        "",
        "Landroid/content/Context;",
        "context",
        "Ljava/lang/Class;",
        "cls",
        "Landroidx/fragment/app/Fragment;",
        "f",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V",
        "(Landroid/content/Context;Ljava/lang/Class;)V",
        "fragment",
        "(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V",
        "d",
        "()Landroidx/fragment/app/Fragment;",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "",
        "toString",
        "()Ljava/lang/String;",
        "a",
        "Landroid/content/Context;",
        "b",
        "Ljava/lang/Class;",
        "()Ljava/lang/Class;",
        "setCls",
        "(Ljava/lang/Class;)V",
        "c",
        "Landroidx/fragment/app/Fragment;",
        "_fragment",
        "Landroid/os/Bundle;",
        "e",
        "Landroid/os/Bundle;",
        "()Landroid/os/Bundle;",
        "(Landroid/os/Bundle;)V",
        "bundle",
        "I",
        "getDrawableId",
        "setDrawableId",
        "(I)V",
        "drawableId",
        "g",
        "Ljava/lang/String;",
        "h",
        "(Ljava/lang/String;)V",
        "tabName",
        "getTabIndex",
        "setTabIndex",
        "getTabIndex$annotations",
        "()V",
        "tabIndex",
        "i",
        "getTabIndexString",
        "setTabIndexString",
        "getTabIndexString$annotations",
        "tabIndexString",
        "j",
        "getTabCode",
        "setTabCode",
        "tabCode",
        "Lkotlin/Pair;",
        "k",
        "Lkotlin/Pair;",
        "getDrawableUrl",
        "()Lkotlin/Pair;",
        "setDrawableUrl",
        "(Lkotlin/Pair;)V",
        "drawableUrl",
        "l",
        "getTextColor",
        "setTextColor",
        "textColor",
        "m",
        "getTextColorString",
        "setTextColorString",
        "textColorString",
        "n",
        "getMsgCount",
        "setMsgCount",
        "msgCount",
        "value",
        "(Landroidx/fragment/app/Fragment;)V",
        "getFragment$annotations",
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
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:I

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:I

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lteam/opay/core/common/android/TabInfo;-><init>(Landroid/content/Context;Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lteam/opay/core/common/android/TabInfo;-><init>(Landroid/content/Context;Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/core/common/android/TabInfo;->a:Landroid/content/Context;

    iput-object p2, p0, Lteam/opay/core/common/android/TabInfo;->b:Ljava/lang/Class;

    iput-object p3, p0, Lteam/opay/core/common/android/TabInfo;->c:Landroidx/fragment/app/Fragment;

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lteam/opay/core/common/android/TabInfo;->g:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lteam/opay/core/common/android/TabInfo;->i:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lteam/opay/core/common/android/TabInfo;->j:Ljava/lang/String;

    .line 5
    new-instance p1, Lkotlin/Pair;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lteam/opay/core/common/android/TabInfo;->k:Lkotlin/Pair;

    .line 6
    new-instance p1, Lkotlin/Pair;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p3, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lteam/opay/core/common/android/TabInfo;->l:Lkotlin/Pair;

    .line 7
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, p2, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lteam/opay/core/common/android/TabInfo;->m:Lkotlin/Pair;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/TabInfo;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/TabInfo;->b:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Landroidx/fragment/app/Fragment;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/TabInfo;->d:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/core/common/android/TabInfo;->c:Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->e:Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/core/common/android/TabInfo;->d:Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lteam/opay/core/common/android/TabInfo;->a:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->b:Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lteam/opay/core/common/android/TabInfo;->e:Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lteam/opay/core/common/android/TabInfo;->d:Landroidx/fragment/app/Fragment;

    .line 32
    .line 33
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/core/common/android/TabInfo;->d:Landroidx/fragment/app/Fragment;

    .line 34
    .line 35
    return-object v0
.end method

.method public final d()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/TabInfo;->d:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/TabInfo;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    const-class v2, Lteam/opay/core/common/android/TabInfo;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    return v2

    .line 23
    :cond_2
    const-string v1, "null cannot be cast to non-null type team.opay.core.common.android.TabInfo"

    .line 24
    .line 25
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast p1, Lteam/opay/core/common/android/TabInfo;

    .line 29
    .line 30
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->b:Ljava/lang/Class;

    .line 31
    .line 32
    iget-object v3, p1, Lteam/opay/core/common/android/TabInfo;->b:Ljava/lang/Class;

    .line 33
    .line 34
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    return v2

    .line 41
    :cond_3
    iget v1, p0, Lteam/opay/core/common/android/TabInfo;->f:I

    .line 42
    .line 43
    iget v3, p1, Lteam/opay/core/common/android/TabInfo;->f:I

    .line 44
    .line 45
    if-eq v1, v3, :cond_4

    .line 46
    .line 47
    return v2

    .line 48
    :cond_4
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->g:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v3, p1, Lteam/opay/core/common/android/TabInfo;->g:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_5

    .line 57
    .line 58
    return v2

    .line 59
    :cond_5
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->j:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v3, p1, Lteam/opay/core/common/android/TabInfo;->j:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_6

    .line 68
    .line 69
    return v2

    .line 70
    :cond_6
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->k:Lkotlin/Pair;

    .line 71
    .line 72
    iget-object v3, p1, Lteam/opay/core/common/android/TabInfo;->k:Lkotlin/Pair;

    .line 73
    .line 74
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_7

    .line 79
    .line 80
    return v2

    .line 81
    :cond_7
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->l:Lkotlin/Pair;

    .line 82
    .line 83
    iget-object v3, p1, Lteam/opay/core/common/android/TabInfo;->l:Lkotlin/Pair;

    .line 84
    .line 85
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_8

    .line 90
    .line 91
    return v2

    .line 92
    :cond_8
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->m:Lkotlin/Pair;

    .line 93
    .line 94
    iget-object v3, p1, Lteam/opay/core/common/android/TabInfo;->m:Lkotlin/Pair;

    .line 95
    .line 96
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_9

    .line 101
    .line 102
    return v2

    .line 103
    :cond_9
    iget v1, p0, Lteam/opay/core/common/android/TabInfo;->n:I

    .line 104
    .line 105
    iget v3, p1, Lteam/opay/core/common/android/TabInfo;->n:I

    .line 106
    .line 107
    if-eq v1, v3, :cond_a

    .line 108
    .line 109
    return v2

    .line 110
    :cond_a
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->d:Landroidx/fragment/app/Fragment;

    .line 111
    .line 112
    iget-object v3, p1, Lteam/opay/core/common/android/TabInfo;->d:Landroidx/fragment/app/Fragment;

    .line 113
    .line 114
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_b

    .line 119
    .line 120
    return v2

    .line 121
    :cond_b
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->e:Landroid/os/Bundle;

    .line 122
    .line 123
    iget-object p1, p1, Lteam/opay/core/common/android/TabInfo;->e:Landroid/os/Bundle;

    .line 124
    .line 125
    invoke-static {v1, p1}, Lhl1;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_c

    .line 130
    .line 131
    return v2

    .line 132
    :cond_c
    return v0
.end method

.method public final f(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/common/android/TabInfo;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    return-void
.end method

.method public final g(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/common/android/TabInfo;->d:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/common/android/TabInfo;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/TabInfo;->b:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->e:Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-static {v1}, Lhl1;->c(Landroid/os/Bundle;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Lteam/opay/core/common/android/TabInfo;->f:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->g:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    add-int/2addr v0, v1

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->j:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/2addr v0, v1

    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->k:Lkotlin/Pair;

    .line 47
    .line 48
    invoke-virtual {v1}, Lkotlin/Pair;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->l:Lkotlin/Pair;

    .line 56
    .line 57
    invoke-virtual {v1}, Lkotlin/Pair;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v0, v1

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    .line 64
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->m:Lkotlin/Pair;

    .line 65
    .line 66
    invoke-virtual {v1}, Lkotlin/Pair;->hashCode()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    add-int/2addr v0, v1

    .line 71
    mul-int/lit8 v0, v0, 0x1f

    .line 72
    .line 73
    iget v1, p0, Lteam/opay/core/common/android/TabInfo;->n:I

    .line 74
    .line 75
    add-int/2addr v0, v1

    .line 76
    mul-int/lit8 v0, v0, 0x1f

    .line 77
    .line 78
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->d:Landroidx/fragment/app/Fragment;

    .line 79
    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    :cond_1
    add-int/2addr v0, v2

    .line 87
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/TabInfo;->g:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/common/android/TabInfo;->j:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lteam/opay/core/common/android/TabInfo;->h:I

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "[tabName:"

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ", tabCode:"

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, "], tabIndex:"

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, "]"

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
