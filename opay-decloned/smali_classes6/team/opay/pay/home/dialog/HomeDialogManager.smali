.class public final Lteam/opay/pay/home/dialog/HomeDialogManager;
.super Ljava/lang/Object;
.source "HomeDialogManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/dialog/HomeDialogManager$Companion;,
        Lteam/opay/pay/home/dialog/HomeDialogManager$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 .2\u00020\u0001:\u0002\u0018/B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J$\u0010\u0016\u001a\u00020\u000e*\u00020\u00142\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0004H\u0082@\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R!\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u001b\u0010)\u001a\u00020%8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u001d\u001a\u0004\u0008\'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,\u00a8\u00060"
    }
    d2 = {
        "Lteam/opay/pay/home/dialog/HomeDialogManager;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/pay/home/dialog/HomeDialogTask;",
        "task",
        "l",
        "(Lteam/opay/pay/home/dialog/HomeDialogTask;)Lteam/opay/pay/home/dialog/HomeDialogManager;",
        "Lteam/opay/pay/home/dialog/HomeDialogManager$a;",
        "listener",
        "q",
        "(Lteam/opay/pay/home/dialog/HomeDialogManager$a;)Lteam/opay/pay/home/dialog/HomeDialogManager;",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "",
        "s",
        "(Landroidx/fragment/app/Fragment;)V",
        "",
        "p",
        "(Landroidx/fragment/app/Fragment;)Z",
        "Landroidx/fragment/app/DialogFragment;",
        "it",
        "r",
        "(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/Fragment;Lteam/opay/pay/home/dialog/HomeDialogTask;Ljr2;)Ljava/lang/Object;",
        "a",
        "Lteam/opay/pay/home/dialog/HomeDialogManager$a;",
        "dialogEventListener",
        "",
        "b",
        "Lid8;",
        "o",
        "()Ljava/util/List;",
        "taskList",
        "",
        "c",
        "Ljava/lang/String;",
        "currentTaskName",
        "Lkotlinx/coroutines/e;",
        "d",
        "n",
        "()Lkotlinx/coroutines/e;",
        "exceptionHandler",
        "Landroidx/lifecycle/e;",
        "e",
        "Landroidx/lifecycle/e;",
        "dialogListener",
        "f",
        "Companion",
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


# static fields
.field public static final f:Lteam/opay/pay/home/dialog/HomeDialogManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static g:Z


# instance fields
.field public a:Lteam/opay/pay/home/dialog/HomeDialogManager$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Landroidx/lifecycle/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/dialog/HomeDialogManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/dialog/HomeDialogManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/dialog/HomeDialogManager;->f:Lteam/opay/pay/home/dialog/HomeDialogManager$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lsz6;

    .line 5
    .line 6
    invoke-direct {v0}, Lsz6;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/pay/home/dialog/HomeDialogManager;->b:Lid8;

    .line 14
    .line 15
    new-instance v0, Ltz6;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Ltz6;-><init>(Lteam/opay/pay/home/dialog/HomeDialogManager;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lteam/opay/pay/home/dialog/HomeDialogManager;->d:Lid8;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/home/dialog/HomeDialogManager;)Lkotlinx/coroutines/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/dialog/HomeDialogManager;->m(Lteam/opay/pay/home/dialog/HomeDialogManager;)Lkotlinx/coroutines/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/dialog/HomeDialogManager;->t()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lteam/opay/pay/home/dialog/HomeDialogManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/dialog/HomeDialogManager;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lteam/opay/pay/home/dialog/HomeDialogManager;)Lteam/opay/pay/home/dialog/HomeDialogManager$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/dialog/HomeDialogManager;->a:Lteam/opay/pay/home/dialog/HomeDialogManager$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lteam/opay/pay/home/dialog/HomeDialogManager;)Landroidx/lifecycle/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/dialog/HomeDialogManager;->e:Landroidx/lifecycle/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/pay/home/dialog/HomeDialogManager;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeDialogManager;->o()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g()Z
    .locals 1

    .line 1
    sget-boolean v0, Lteam/opay/pay/home/dialog/HomeDialogManager;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic h(Lteam/opay/pay/home/dialog/HomeDialogManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic i(Lteam/opay/pay/home/dialog/HomeDialogManager;Landroidx/lifecycle/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager;->e:Landroidx/lifecycle/e;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic j(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lteam/opay/pay/home/dialog/HomeDialogManager;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic k(Lteam/opay/pay/home/dialog/HomeDialogManager;Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/Fragment;Lteam/opay/pay/home/dialog/HomeDialogTask;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/home/dialog/HomeDialogManager;->r(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/Fragment;Lteam/opay/pay/home/dialog/HomeDialogTask;Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final m(Lteam/opay/pay/home/dialog/HomeDialogManager;)Lkotlinx/coroutines/e;
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/e;->o0:Lkotlinx/coroutines/e$a;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/pay/home/dialog/HomeDialogManager$exceptionHandler_delegate$lambda$2$$inlined$CoroutineExceptionHandler$1;

    .line 4
    .line 5
    invoke-direct {v1, v0, p0}, Lteam/opay/pay/home/dialog/HomeDialogManager$exceptionHandler_delegate$lambda$2$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/e$a;Lteam/opay/pay/home/dialog/HomeDialogManager;)V

    .line 6
    .line 7
    .line 8
    return-object v1
.end method

.method public static final t()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final l(Lteam/opay/pay/home/dialog/HomeDialogTask;)Lteam/opay/pay/home/dialog/HomeDialogManager;
    .locals 1
    .param p1    # Lteam/opay/pay/home/dialog/HomeDialogTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeDialogManager;->o()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/home/dialog/HomeDialogTask;->k()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/pay/home/dialog/HomeDialogTask;->c()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Lteam/opay/pay/home/dialog/HomeDialogTask;->j(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Lteam/opay/pay/home/dialog/HomeDialogTask;->j(Z)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-object p0
.end method

.method public final n()Lkotlinx/coroutines/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeDialogManager;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlinx/coroutines/e;

    .line 8
    .line 9
    return-object v0
.end method

.method public final o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/home/dialog/HomeDialogTask;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeDialogManager;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public final p(Landroidx/fragment/app/Fragment;)Z
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
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 43
    .line 44
    if-eq p1, v0, :cond_0

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    :goto_0
    return p1
.end method

.method public final q(Lteam/opay/pay/home/dialog/HomeDialogManager$a;)Lteam/opay/pay/home/dialog/HomeDialogManager;
    .locals 1
    .param p1    # Lteam/opay/pay/home/dialog/HomeDialogManager$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager;->a:Lteam/opay/pay/home/dialog/HomeDialogManager$a;

    .line 7
    .line 8
    return-object p0
.end method

.method public final r(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/Fragment;Lteam/opay/pay/home/dialog/HomeDialogTask;Ljr2;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/DialogFragment;",
            "Landroidx/fragment/app/Fragment;",
            "Lteam/opay/pay/home/dialog/HomeDialogTask;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v7, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    .line 3
    invoke-static {p4}, Lkotlin/coroutines/intrinsics/a;->c(Ljr2;)Ljr2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v7, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Ljr2;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->B()V

    .line 12
    .line 13
    .line 14
    new-instance v8, Lteam/opay/pay/home/dialog/HomeDialogManager$c;

    .line 15
    .line 16
    invoke-direct {v8, p2, p1, p0}, Lteam/opay/pay/home/dialog/HomeDialogManager$c;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;Lteam/opay/pay/home/dialog/HomeDialogManager;)V

    .line 17
    .line 18
    .line 19
    new-instance v9, Lteam/opay/pay/home/dialog/HomeDialogManager$b;

    .line 20
    .line 21
    move-object v0, v9

    .line 22
    move-object v1, p2

    .line 23
    move-object v2, p0

    .line 24
    move-object v3, p1

    .line 25
    move-object v4, p3

    .line 26
    move-object v5, v8

    .line 27
    move-object v6, v7

    .line 28
    invoke-direct/range {v0 .. v6}, Lteam/opay/pay/home/dialog/HomeDialogManager$b;-><init>(Landroidx/fragment/app/Fragment;Lteam/opay/pay/home/dialog/HomeDialogManager;Landroidx/fragment/app/DialogFragment;Lteam/opay/pay/home/dialog/HomeDialogTask;Landroidx/lifecycle/e;Lzv1;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v9}, Lteam/opay/pay/home/dialog/HomeDialogManager;->i(Lteam/opay/pay/home/dialog/HomeDialogManager;Landroidx/lifecycle/e;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, v8}, Landroidx/lifecycle/Lifecycle;->a(Lzf8;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->r()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    if-ne p1, p2, :cond_0

    .line 50
    .line 51
    invoke-static {p4}, Lp33;->c(Ljr2;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-ne p1, p2, :cond_1

    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p1
.end method

.method public final s(Landroidx/fragment/app/Fragment;)V
    .locals 7
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
    invoke-static {p1}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeDialogManager;->n()Lkotlinx/coroutines/e;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v4, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, p1, v0}, Lteam/opay/pay/home/dialog/HomeDialogManager$start$1;-><init>(Lteam/opay/pay/home/dialog/HomeDialogManager;Landroidx/fragment/app/Fragment;Ljr2;)V

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
    return-void
.end method
