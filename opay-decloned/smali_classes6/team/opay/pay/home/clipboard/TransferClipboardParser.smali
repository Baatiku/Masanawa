.class public final Lteam/opay/pay/home/clipboard/TransferClipboardParser;
.super Ljava/lang/Object;
.source "TransferClipboardParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J1\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0016\u001a\u0004\u0008\u001c\u0010\u001dR\"\u0010%\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006&"
    }
    d2 = {
        "Lteam/opay/pay/home/clipboard/TransferClipboardParser;",
        "",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "<init>",
        "(Landroidx/fragment/app/Fragment;)V",
        "",
        "saveTime",
        "fromAA",
        "Lkotlin/Function1;",
        "",
        "",
        "callback",
        "g",
        "(ZZLkotlin/jvm/functions/Function1;)V",
        "text",
        "k",
        "(Ljava/lang/String;Z)Z",
        "a",
        "Landroidx/fragment/app/Fragment;",
        "Lteam/opay/pay/home/ClipboardAutoReader;",
        "b",
        "Lid8;",
        "j",
        "()Lteam/opay/pay/home/ClipboardAutoReader;",
        "reader",
        "Lteam/opay/core/settings/NoClearStorage;",
        "c",
        "h",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "noClearStorage",
        "d",
        "Ljava/lang/String;",
        "i",
        "()Ljava/lang/String;",
        "n",
        "(Ljava/lang/String;)V",
        "pasteNumber",
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
.field public final a:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->a:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    new-instance p1, Lm2f;

    .line 12
    .line 13
    invoke-direct {p1}, Lm2f;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->b:Lid8;

    .line 21
    .line 22
    new-instance p1, Ln2f;

    .line 23
    .line 24
    invoke-direct {p1}, Ln2f;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->c:Lid8;

    .line 32
    .line 33
    const-string p1, ""

    .line 34
    .line 35
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->d:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic a()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->l()Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lteam/opay/pay/home/ClipboardAutoReader;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->m()Lteam/opay/pay/home/ClipboardAutoReader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lteam/opay/pay/home/clipboard/TransferClipboardParser;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lteam/opay/pay/home/clipboard/TransferClipboardParser;)Lteam/opay/core/settings/NoClearStorage;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->h()Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lteam/opay/pay/home/clipboard/TransferClipboardParser;)Lteam/opay/pay/home/ClipboardAutoReader;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->j()Lteam/opay/pay/home/ClipboardAutoReader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/pay/home/clipboard/TransferClipboardParser;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->k(Ljava/lang/String;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final l()Lteam/opay/core/settings/NoClearStorage;
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

.method public static final m()Lteam/opay/pay/home/ClipboardAutoReader;
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
.method public final g(ZZLkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->a:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    move-object v2, v0

    .line 16
    move-object v3, p0

    .line 17
    move v4, p2

    .line 18
    move v5, p1

    .line 19
    move-object v6, p3

    .line 20
    invoke-direct/range {v2 .. v7}, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;-><init>(Lteam/opay/pay/home/clipboard/TransferClipboardParser;ZZLkotlin/jvm/functions/Function1;Ljr2;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    move-object v4, v0

    .line 28
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final h()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->c:Lid8;

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

.method public final i()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lteam/opay/pay/home/ClipboardAutoReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->b:Lid8;

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

.method public final k(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lkotlin/text/Regex;

    .line 4
    .line 5
    const-string v0, "^\\+?(?:234)?0?[789][0-9]{9}"

    .line 6
    .line 7
    invoke-direct {p2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1}, Loj2;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/16 p2, 0xa

    .line 24
    .line 25
    if-ne p1, p2, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->d:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
