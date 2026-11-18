.class public abstract Lteam/opay/pay/home/dialog/HomeDialogTask;
.super Ljava/lang/Object;
.source "HomeDialogTask.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0011\u0010\n\u001a\u0004\u0018\u00010\tH$\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u000cH\u00a6@\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0012\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u00040\u000f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R$\u0010\u0019\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u000b\"\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001f\u001a\u00020\u001a8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\"\u0010$\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010 \u001a\u0004\u0008!\u0010\u0008\"\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Lteam/opay/pay/home/dialog/HomeDialogTask;",
        "",
        "<init>",
        "()V",
        "",
        "c",
        "",
        "k",
        "()Z",
        "Lkotlinx/coroutines/l;",
        "e",
        "()Lkotlinx/coroutines/l;",
        "Landroidx/fragment/app/DialogFragment;",
        "d",
        "(Ljr2;)Ljava/lang/Object;",
        "Ljr2;",
        "Lzr2;",
        "scope",
        "i",
        "(Ljr2;Lzr2;)V",
        "a",
        "Lkotlinx/coroutines/l;",
        "h",
        "setTask",
        "(Lkotlinx/coroutines/l;)V",
        "task",
        "Lkotlinx/coroutines/e;",
        "b",
        "Lid8;",
        "f",
        "()Lkotlinx/coroutines/e;",
        "exceptionHandler",
        "Z",
        "g",
        "j",
        "(Z)V",
        "jump",
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
.field public a:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Luz6;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Luz6;-><init>(Lteam/opay/pay/home/dialog/HomeDialogTask;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/pay/home/dialog/HomeDialogTask;->b:Lid8;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/home/dialog/HomeDialogTask;)Lkotlinx/coroutines/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/dialog/HomeDialogTask;->b(Lteam/opay/pay/home/dialog/HomeDialogTask;)Lkotlinx/coroutines/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Lteam/opay/pay/home/dialog/HomeDialogTask;)Lkotlinx/coroutines/e;
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/e;->o0:Lkotlinx/coroutines/e$a;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/pay/home/dialog/HomeDialogTask$exceptionHandler_delegate$lambda$1$$inlined$CoroutineExceptionHandler$1;

    .line 4
    .line 5
    invoke-direct {v1, v0, p0}, Lteam/opay/pay/home/dialog/HomeDialogTask$exceptionHandler_delegate$lambda$1$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/e$a;Lteam/opay/pay/home/dialog/HomeDialogTask;)V

    .line 6
    .line 7
    .line 8
    return-object v1
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeDialogTask;->e()Lkotlinx/coroutines/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lteam/opay/pay/home/dialog/HomeDialogTask;->a:Lkotlinx/coroutines/l;

    .line 6
    .line 7
    return-void
.end method

.method public abstract d(Ljr2;)Ljava/lang/Object;
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
.end method

.method public abstract e()Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final f()Lkotlinx/coroutines/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeDialogTask;->b:Lid8;

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

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/dialog/HomeDialogTask;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final h()Lkotlinx/coroutines/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeDialogTask;->a:Lkotlinx/coroutines/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Ljr2;Lzr2;)V
    .locals 3
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Lzr2;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lkotlinx/coroutines/g;->h(Lzr2;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 19
    .line 20
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-interface {p1, p2}, Ljr2;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    sget-object p2, Lx7b;->a:Lx7b;

    .line 32
    .line 33
    const-string v0, "message"

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "name"

    .line 52
    .line 53
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x2

    .line 58
    new-array v1, v1, [Lkotlin/Pair;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    aput-object p1, v1, v2

    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    aput-object v0, v1, p1

    .line 65
    .line 66
    const-string p1, "continuation_resume_exception"

    .line 67
    .line 68
    invoke-virtual {p2, p1, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final j(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/dialog/HomeDialogTask;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public abstract k()Z
.end method
