.class final Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ClipboardAutoReader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/ClipboardAutoReader;->i(Landroidx/fragment/app/Fragment;Ljr2;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lteam/opay/pay/home/OPayClipData;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "Lteam/opay/pay/home/OPayClipData;",
        "<anonymous>",
        "(Lzr2;)Lteam/opay/pay/home/OPayClipData;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.home.ClipboardAutoReader$readClipboard$2"
    f = "ClipboardAutoReader.kt"
    l = {
        0x33,
        0x4e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $fragment:Landroidx/fragment/app/Fragment;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/home/ClipboardAutoReader;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/ClipboardAutoReader;Landroidx/fragment/app/Fragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/ClipboardAutoReader;",
            "Landroidx/fragment/app/Fragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->this$0:Lteam/opay/pay/home/ClipboardAutoReader;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->$fragment:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/home/ClipboardAutoReader;Lye9;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->invokeSuspend$lambda$0(Lteam/opay/pay/home/ClipboardAutoReader;Lye9;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lteam/opay/pay/home/ClipboardAutoReader;Lye9;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "clipboard"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Landroid/content/ClipboardManager;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Landroid/content/ClipboardManager;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v2

    .line 20
    :goto_0
    if-eqz v0, :cond_7

    .line 21
    .line 22
    invoke-static {p0, v0}, Lteam/opay/pay/home/ClipboardAutoReader;->b(Lteam/opay/pay/home/ClipboardAutoReader;Landroid/content/ClipboardManager;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_4

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_6

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-gtz v1, :cond_2

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_2
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move-object v0, v2

    .line 69
    :goto_1
    if-eqz v0, :cond_5

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    new-instance v2, Lteam/opay/pay/home/OPayClipData;

    .line 79
    .line 80
    invoke-static {p0}, Lteam/opay/pay/home/ClipboardAutoReader;->c(Lteam/opay/pay/home/ClipboardAutoReader;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    invoke-direct {v2, v0, v3, v4}, Lteam/opay/pay/home/OPayClipData;-><init>(Ljava/lang/String;J)V

    .line 85
    .line 86
    .line 87
    :cond_5
    :goto_2
    invoke-interface {p1, v2}, Lxe9;->a(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p0

    .line 93
    :cond_6
    :goto_3
    invoke-interface {p1, v2}, Lxe9;->a(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_7
    :goto_4
    invoke-interface {p1, v2}, Lxe9;->a(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->this$0:Lteam/opay/pay/home/ClipboardAutoReader;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->$fragment:Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;-><init>(Lteam/opay/pay/home/ClipboardAutoReader;Landroidx/fragment/app/Fragment;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/OPayClipData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    iget-object v1, p0, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lye9;

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->this$0:Lteam/opay/pay/home/ClipboardAutoReader;

    .line 40
    .line 41
    invoke-static {p1}, Lteam/opay/pay/home/ClipboardAutoReader;->d(Lteam/opay/pay/home/ClipboardAutoReader;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    return-object v2

    .line 48
    :cond_3
    iget-object p1, p0, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->this$0:Lteam/opay/pay/home/ClipboardAutoReader;

    .line 49
    .line 50
    invoke-static {p1, v4}, Lteam/opay/pay/home/ClipboardAutoReader;->e(Lteam/opay/pay/home/ClipboardAutoReader;Z)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lteam/opay/pay/home/OPayClipData;->c:Lteam/opay/pay/home/OPayClipData$Companion;

    .line 54
    .line 55
    invoke-virtual {p1}, Lteam/opay/pay/home/OPayClipData$Companion;->a()Lteam/opay/pay/home/OPayClipData;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lkotlinx/coroutines/flow/b;->a(Ljava/lang/Object;)Lye9;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object p1, p0, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->$fragment:Landroidx/fragment/app/Fragment;

    .line 64
    .line 65
    iget-object v5, p0, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->this$0:Lteam/opay/pay/home/ClipboardAutoReader;

    .line 66
    .line 67
    new-instance v6, Lteam/opay/pay/home/a;

    .line 68
    .line 69
    invoke-direct {v6, v5, v1}, Lteam/opay/pay/home/a;-><init>(Lteam/opay/pay/home/ClipboardAutoReader;Lye9;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->L$0:Ljava/lang/Object;

    .line 73
    .line 74
    iput v4, p0, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->label:I

    .line 75
    .line 76
    invoke-static {p1, v6, p0}, Lteam/opay/core/android/SelfRemovingWindowFocusChangeListenerKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Ljr2;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-ne p1, v0, :cond_4

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_4
    :goto_0
    new-instance p1, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2$invokeSuspend$$inlined$filter$1;

    .line 84
    .line 85
    invoke-direct {p1, v1}, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2$invokeSuspend$$inlined$filter$1;-><init>(Lv56;)V

    .line 86
    .line 87
    .line 88
    iput-object v2, p0, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    iput v3, p0, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->label:I

    .line 91
    .line 92
    invoke-static {p1, p0}, Ly86;->z(Lv56;Ljr2;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-ne p1, v0, :cond_5

    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_5
    :goto_1
    iget-object v0, p0, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->this$0:Lteam/opay/pay/home/ClipboardAutoReader;

    .line 100
    .line 101
    move-object v1, p1

    .line 102
    check-cast v1, Lteam/opay/pay/home/OPayClipData;

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-static {v0, v1}, Lteam/opay/pay/home/ClipboardAutoReader;->e(Lteam/opay/pay/home/ClipboardAutoReader;Z)V

    .line 106
    .line 107
    .line 108
    return-object p1
.end method
