.class public final Lteam/opay/pay/home/ClipboardAutoReader;
.super Ljava/lang/Object;
.source "ClipboardAutoReader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0086@\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0013\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/pay/home/ClipboardAutoReader;",
        "",
        "<init>",
        "()V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "Lteam/opay/pay/home/OPayClipData;",
        "i",
        "(Landroidx/fragment/app/Fragment;Ljr2;)Ljava/lang/Object;",
        "Landroid/content/ClipboardManager;",
        "clipboardManager",
        "",
        "f",
        "(Landroid/content/ClipboardManager;)Z",
        "Lteam/opay/core/settings/NoClearStorage;",
        "a",
        "Lid8;",
        "g",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "noClearStorage",
        "",
        "b",
        "J",
        "clipTimestamp",
        "c",
        "Z",
        "isReading",
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
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:J

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lne2;

    .line 5
    .line 6
    invoke-direct {v0}, Lne2;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/pay/home/ClipboardAutoReader;->a:Lid8;

    .line 14
    .line 15
    const-wide/16 v0, -0x1

    .line 16
    .line 17
    iput-wide v0, p0, Lteam/opay/pay/home/ClipboardAutoReader;->b:J

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/ClipboardAutoReader;->h()Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b(Lteam/opay/pay/home/ClipboardAutoReader;Landroid/content/ClipboardManager;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/ClipboardAutoReader;->f(Landroid/content/ClipboardManager;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic c(Lteam/opay/pay/home/ClipboardAutoReader;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/home/ClipboardAutoReader;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic d(Lteam/opay/pay/home/ClipboardAutoReader;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/pay/home/ClipboardAutoReader;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic e(Lteam/opay/pay/home/ClipboardAutoReader;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/ClipboardAutoReader;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final h()Lteam/opay/core/settings/NoClearStorage;
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


# virtual methods
.method public final f(Landroid/content/ClipboardManager;)Z
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    return v2

    .line 16
    :cond_1
    invoke-static {p1}, Lcr2;->a(Landroid/content/ClipDescription;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    sub-long/2addr v3, v0

    .line 25
    const-wide/32 v5, 0xea60

    .line 26
    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    cmp-long v8, v3, v5

    .line 30
    .line 31
    if-gtz v8, :cond_2

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v3, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/home/ClipboardAutoReader;->g()Lteam/opay/core/settings/NoClearStorage;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Lteam/opay/core/settings/NoClearStorage;->d0()J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    cmp-long v6, v4, v0

    .line 45
    .line 46
    if-eqz v6, :cond_3

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/4 v4, 0x0

    .line 51
    :goto_1
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-lez v5, :cond_4

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    const/4 p1, 0x0

    .line 63
    :goto_2
    const-string v5, "text/html"

    .line 64
    .line 65
    const-string v6, "text/plain"

    .line 66
    .line 67
    filled-new-array {v5, v6}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-static {v5}, Lkotlin/collections/f;->j([Ljava/lang/Object;)Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    if-eqz v3, :cond_5

    .line 76
    .line 77
    if-eqz v4, :cond_5

    .line 78
    .line 79
    invoke-static {v5, p1}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    :cond_5
    if-eqz v2, :cond_6

    .line 87
    .line 88
    iput-wide v0, p0, Lteam/opay/pay/home/ClipboardAutoReader;->b:J

    .line 89
    .line 90
    :cond_6
    return v2
.end method

.method public final g()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/ClipboardAutoReader;->a:Lid8;

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

.method public final i(Landroidx/fragment/app/Fragment;Ljr2;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/OPayClipData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;-><init>(Lteam/opay/pay/home/ClipboardAutoReader;Landroidx/fragment/app/Fragment;Ljr2;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p2}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
