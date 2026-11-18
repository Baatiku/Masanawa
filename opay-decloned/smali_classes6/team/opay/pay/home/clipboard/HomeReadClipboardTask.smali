.class public final Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;
.super Lteam/opay/pay/home/dialog/HomeDialogTask;
.source "HomeReadClipboardTask.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0011\u0010\n\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0096@\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0013R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u001b\u0010(\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u0015\u001a\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;",
        "Lteam/opay/pay/home/dialog/HomeDialogTask;",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "<init>",
        "(Landroidx/fragment/app/Fragment;)V",
        "",
        "k",
        "()Z",
        "Lkotlinx/coroutines/l;",
        "e",
        "()Lkotlinx/coroutines/l;",
        "Landroidx/fragment/app/DialogFragment;",
        "d",
        "(Ljr2;)Ljava/lang/Object;",
        "",
        "A",
        "()V",
        "z",
        "Landroidx/fragment/app/Fragment;",
        "Lteam/opay/core/settings/NoClearStorage;",
        "Lid8;",
        "v",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "noClearStorage",
        "Lteam/opay/pay/home/clipboard/ClipboardParser;",
        "f",
        "Lteam/opay/pay/home/clipboard/ClipboardParser;",
        "parser",
        "g",
        "Lkotlinx/coroutines/l;",
        "readClipboardJob",
        "Lteam/opay/pay/home/OPayClipData;",
        "h",
        "Lteam/opay/pay/home/OPayClipData;",
        "mClipData",
        "Lteam/opay/pay/home/ClipboardAutoReader;",
        "i",
        "w",
        "()Lteam/opay/pay/home/ClipboardAutoReader;",
        "reader",
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
.field public final d:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lteam/opay/pay/home/clipboard/ClipboardParser;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lteam/opay/pay/home/OPayClipData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/home/dialog/HomeDialogTask;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->d:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    new-instance v0, Le17;

    .line 12
    .line 13
    invoke-direct {v0}, Le17;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->e:Lid8;

    .line 21
    .line 22
    new-instance v0, Lf17;

    .line 23
    .line 24
    invoke-direct {v0}, Lf17;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->i:Lid8;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$a;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$a;-><init>(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Lzf8;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static final B(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->d:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v4, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;-><init>(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;Ljr2;)V

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->g:Lkotlinx/coroutines/l;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic l()Lteam/opay/pay/home/ClipboardAutoReader;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->y()Lteam/opay/pay/home/ClipboardAutoReader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic m()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->x()Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic n(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->B(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->d:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic p(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)Lteam/opay/pay/home/OPayClipData;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->h:Lteam/opay/pay/home/OPayClipData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic q(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)Lkotlinx/coroutines/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->g:Lkotlinx/coroutines/l;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)Lteam/opay/pay/home/ClipboardAutoReader;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->w()Lteam/opay/pay/home/ClipboardAutoReader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic s(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;Lteam/opay/pay/home/OPayClipData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->h:Lteam/opay/pay/home/OPayClipData;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic t(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;Lteam/opay/pay/home/clipboard/ClipboardParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->f:Lteam/opay/pay/home/clipboard/ClipboardParser;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic u(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final x()Lteam/opay/core/settings/NoClearStorage;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static final y()Lteam/opay/pay/home/ClipboardAutoReader;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/home/ClipboardAutoReader;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/home/ClipboardAutoReader;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->d:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lg17;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lg17;-><init>(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public d(Ljr2;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Landroidx/fragment/app/DialogFragment;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->f:Lteam/opay/pay/home/clipboard/ClipboardParser;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->h:Lteam/opay/pay/home/OPayClipData;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->v()Lteam/opay/core/settings/NoClearStorage;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lteam/opay/core/settings/NoClearStorage;->d0()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iget-object p1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->h:Lteam/opay/pay/home/OPayClipData;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/home/OPayClipData;->c()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    cmp-long p1, v1, v3

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->v()Lteam/opay/core/settings/NoClearStorage;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->h:Lteam/opay/pay/home/OPayClipData;

    .line 36
    .line 37
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lteam/opay/pay/home/OPayClipData;->c()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    invoke-virtual {p1, v1, v2}, Lteam/opay/core/settings/NoClearStorage;->J1(J)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->f:Lteam/opay/pay/home/clipboard/ClipboardParser;

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->d:Landroidx/fragment/app/Fragment;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lteam/opay/pay/home/clipboard/ClipboardParser;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/DialogFragment;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_0
    return-object v0
.end method

.method public e()Lkotlinx/coroutines/l;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->z()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->d:Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeDialogTask;->f()Lkotlinx/coroutines/e;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v4, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;-><init>(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;Ljr2;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public k()Z
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/home/dialog/HomeDialogManager;->f:Lteam/opay/pay/home/dialog/HomeDialogManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/home/dialog/HomeDialogManager$Companion;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x1a

    .line 12
    .line 13
    if-lt v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->v()Lteam/opay/core/settings/NoClearStorage;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->r()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    return v0
.end method

.method public final v()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/NoClearStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public final w()Lteam/opay/pay/home/ClipboardAutoReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->i:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/ClipboardAutoReader;

    .line 8
    .line 9
    return-object v0
.end method

.method public final z()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->h:Lteam/opay/pay/home/OPayClipData;

    .line 3
    .line 4
    iput-object v0, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->f:Lteam/opay/pay/home/clipboard/ClipboardParser;

    .line 5
    .line 6
    return-void
.end method
