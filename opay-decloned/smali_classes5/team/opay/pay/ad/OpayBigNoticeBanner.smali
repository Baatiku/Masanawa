.class public final Lteam/opay/pay/ad/OpayBigNoticeBanner;
.super Ljava/lang/Object;
.source "OpayBigNoticeBanner.kt"

# interfaces
.implements Ltzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltzf<",
        "Lteam/opay/odialog/net/AdDataItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\"R#\u0010)\u001a\n $*\u0004\u0018\u00010#0#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lteam/opay/pay/ad/OpayBigNoticeBanner;",
        "Ltzf;",
        "Lteam/opay/odialog/net/AdDataItem;",
        "Landroid/content/Context;",
        "context",
        "Lteam/opay/pay/ad/ODBannerViewReporer;",
        "reporter",
        "",
        "from",
        "<init>",
        "(Landroid/content/Context;Lteam/opay/pay/ad/ODBannerViewReporer;Ljava/lang/String;)V",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "data",
        "",
        "position",
        "",
        "k",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/odialog/net/AdDataItem;I)V",
        "Landroid/view/ViewGroup;",
        "container",
        "viewType",
        "c",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "h",
        "(Lteam/opay/odialog/net/AdDataItem;)V",
        "Lfm;",
        "binding",
        "g",
        "(Lteam/opay/odialog/net/AdDataItem;Lfm;)V",
        "a",
        "Landroid/content/Context;",
        "b",
        "Lteam/opay/pay/ad/ODBannerViewReporer;",
        "Ljava/lang/String;",
        "Landroid/view/LayoutInflater;",
        "kotlin.jvm.PlatformType",
        "d",
        "Lid8;",
        "j",
        "()Landroid/view/LayoutInflater;",
        "layoutInflater",
        "advertisement_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/ad/ODBannerViewReporer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lteam/opay/pay/ad/ODBannerViewReporer;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/ad/ODBannerViewReporer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "reporter"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "from"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/pay/ad/OpayBigNoticeBanner;->a:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/ad/OpayBigNoticeBanner;->b:Lteam/opay/pay/ad/ODBannerViewReporer;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/pay/ad/OpayBigNoticeBanner;->c:Ljava/lang/String;

    .line 24
    .line 25
    new-instance p1, Lteam/opay/pay/ad/OpayBigNoticeBanner$layoutInflater$2;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lteam/opay/pay/ad/OpayBigNoticeBanner$layoutInflater$2;-><init>(Lteam/opay/pay/ad/OpayBigNoticeBanner;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lteam/opay/pay/ad/OpayBigNoticeBanner;->d:Lid8;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic d(Lteam/opay/pay/ad/OpayBigNoticeBanner;Lteam/opay/odialog/net/AdDataItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/ad/OpayBigNoticeBanner;->m(Lteam/opay/pay/ad/OpayBigNoticeBanner;Lteam/opay/odialog/net/AdDataItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lteam/opay/pay/ad/OpayBigNoticeBanner;Lteam/opay/odialog/net/AdDataItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/ad/OpayBigNoticeBanner;->l(Lteam/opay/pay/ad/OpayBigNoticeBanner;Lteam/opay/odialog/net/AdDataItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lteam/opay/pay/ad/OpayBigNoticeBanner;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/ad/OpayBigNoticeBanner;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private final j()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/OpayBigNoticeBanner;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/LayoutInflater;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final l(Lteam/opay/pay/ad/OpayBigNoticeBanner;Lteam/opay/odialog/net/AdDataItem;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "$data"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lteam/opay/pay/ad/OpayBigNoticeBanner;->h(Lteam/opay/odialog/net/AdDataItem;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final m(Lteam/opay/pay/ad/OpayBigNoticeBanner;Lteam/opay/odialog/net/AdDataItem;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "$data"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lteam/opay/pay/ad/OpayBigNoticeBanner;->h(Lteam/opay/odialog/net/AdDataItem;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/ad/OpayBigNoticeBanner;->k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/odialog/net/AdDataItem;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/ad/OpayBigNoticeBanner;->i(ILteam/opay/odialog/net/AdDataItem;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "container"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/ad/OpayBigNoticeBanner;->j()Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p2, p1, v0}, Lfm;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfm;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "inflate(layoutInflater, container, false)"

    .line 16
    .line 17
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lfm;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Lteam/opay/pay/ad/OpayBigNoticeBanner$a;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Lteam/opay/pay/ad/OpayBigNoticeBanner$a;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public final g(Lteam/opay/odialog/net/AdDataItem;Lfm;)V
    .locals 3

    .line 1
    iget-object v0, p2, Lfm;->e:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getTitleWrapper()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getDesc()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "binding.content"

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getRichDesc()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getRichDesc()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v2, 0x1

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p2, Lfm;->c:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Le43;->c(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p2, Lfm;->e:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p2, Lfm;->c:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getRichDesc()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    const-string p1, ""

    .line 73
    .line 74
    :cond_3
    const/4 v0, 0x0

    .line 75
    invoke-static {p1, v0}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    :goto_0
    iget-object v0, p2, Lfm;->c:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Le43;->c(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p2, Lfm;->e:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 94
    .line 95
    .line 96
    iget-object p2, p2, Lfm;->c:Landroid/widget/TextView;

    .line 97
    .line 98
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getDescWrapper()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    :goto_1
    iget-object p1, p2, Lfm;->c:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Le43;->b(Landroid/view/View;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p2, Lfm;->e:Landroid/widget/TextView;

    .line 115
    .line 116
    const/4 p2, 0x2

    .line 117
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 118
    .line 119
    .line 120
    :goto_2
    return-void
.end method

.method public final h(Lteam/opay/odialog/net/AdDataItem;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/OpayBigNoticeBanner;->b:Lteam/opay/pay/ad/ODBannerViewReporer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/pay/ad/ODBannerViewReporer;->i(Lteam/opay/odialog/net/AdDataItem;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 7
    .line 8
    const-class v1, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lteam/opay/pay/ad/OpayBigNoticeBanner;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getActionWrapper()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const-string p1, ""

    .line 27
    .line 28
    :cond_0
    iget-object v2, p0, Lteam/opay/pay/ad/OpayBigNoticeBanner;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {v0, v1, p1, v2}, Lteam/opay/swarmfoundation/action/IActionManager;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public i(ILteam/opay/odialog/net/AdDataItem;)I
    .locals 0
    .param p2    # Lteam/opay/odialog/net/AdDataItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2}, Ltzf$a;->a(Ltzf;ILjava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/odialog/net/AdDataItem;I)V
    .locals 10
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/odialog/net/AdDataItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p3, "holder"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "data"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p0, Lteam/opay/pay/ad/OpayBigNoticeBanner;->a:Landroid/content/Context;

    .line 12
    .line 13
    instance-of v0, p3, Landroid/app/Activity;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p3, Landroid/app/Activity;

    .line 18
    .line 19
    invoke-virtual {p3}, Landroid/app/Activity;->isDestroyed()Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-nez p3, :cond_0

    .line 24
    .line 25
    iget-object p3, p0, Lteam/opay/pay/ad/OpayBigNoticeBanner;->a:Landroid/content/Context;

    .line 26
    .line 27
    check-cast p3, Landroid/app/Activity;

    .line 28
    .line 29
    invoke-virtual {p3}, Landroid/app/Activity;->isFinishing()Z

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 37
    .line 38
    invoke-static {p1}, Lfm;->bind(Landroid/view/View;)Lfm;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p3, "bind(holder.itemView)"

    .line 43
    .line 44
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getBackgroundConfig()Lteam/opay/odialog/net/BackgroundConfig;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Lfm;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getBackgroundConfig()Lteam/opay/odialog/net/BackgroundConfig;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/16 v1, 0xc

    .line 62
    .line 63
    invoke-static {v0, v1}, Lkzf;->c(Lteam/opay/odialog/net/BackgroundConfig;I)Landroid/graphics/drawable/GradientDrawable;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p1}, Lfm;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    iget-object v0, p0, Lteam/opay/pay/ad/OpayBigNoticeBanner;->a:Landroid/content/Context;

    .line 76
    .line 77
    sget v1, Lteam/opay/odialog/R$drawable;->od_shape_corner_white_4:I

    .line 78
    .line 79
    invoke-static {v0, v1}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getImageSuperscriptUrlWrapper()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const-string p3, "binding.icon"

    .line 91
    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    iget-object v1, p1, Lfm;->d:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 102
    .line 103
    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sget v3, Lteam/opay/odialog/R$mipmap;->od_logo:I

    .line 107
    .line 108
    const/16 v8, 0x3c

    .line 109
    .line 110
    const/4 v9, 0x0

    .line 111
    const/4 v4, 0x0

    .line 112
    const/4 v5, 0x0

    .line 113
    const/4 v6, 0x0

    .line 114
    const/4 v7, 0x0

    .line 115
    invoke-static/range {v1 .. v9}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    :goto_1
    iget-object v0, p1, Lfm;->d:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 120
    .line 121
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Le43;->b(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    :goto_2
    invoke-virtual {p0, p2, p1}, Lteam/opay/pay/ad/OpayBigNoticeBanner;->g(Lteam/opay/odialog/net/AdDataItem;Lfm;)V

    .line 128
    .line 129
    .line 130
    iget-object p3, p1, Lfm;->b:Lcom/google/android/material/button/MaterialButton;

    .line 131
    .line 132
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getActionTitleWrapper()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const-string v1, "button"

    .line 137
    .line 138
    if-eqz v0, :cond_6

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_5

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_5
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-static {p3}, Le43;->c(Landroid/view/View;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_6
    :goto_3
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {p3}, Le43;->b(Landroid/view/View;)V

    .line 161
    .line 162
    .line 163
    :goto_4
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getButtonColor()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v1, p0, Lteam/opay/pay/ad/OpayBigNoticeBanner;->a:Landroid/content/Context;

    .line 168
    .line 169
    sget v2, Lteam/opay/odialog/R$color;->od_00B876:I

    .line 170
    .line 171
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-static {v0, v1}, Lkzf;->l(Ljava/lang/String;I)I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    const/4 v1, 0x2

    .line 180
    const/4 v2, 0x0

    .line 181
    invoke-static {p3, v0, v2, v1, v2}, Lkzf;->o(Landroid/view/View;ILandroid/graphics/PorterDuff$Mode;ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getButtonFontColor()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iget-object v1, p0, Lteam/opay/pay/ad/OpayBigNoticeBanner;->a:Landroid/content/Context;

    .line 189
    .line 190
    sget v2, Lteam/opay/odialog/R$color;->od_color_white:I

    .line 191
    .line 192
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    invoke-static {v0, v1}, Lkzf;->l(Ljava/lang/String;I)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    .line 202
    .line 203
    new-instance v0, Lvqa;

    .line 204
    .line 205
    invoke-direct {v0, p0, p2}, Lvqa;-><init>(Lteam/opay/pay/ad/OpayBigNoticeBanner;Lteam/opay/odialog/net/AdDataItem;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Lfm;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    new-instance p3, Lwqa;

    .line 216
    .line 217
    invoke-direct {p3, p0, p2}, Lwqa;-><init>(Lteam/opay/pay/ad/OpayBigNoticeBanner;Lteam/opay/odialog/net/AdDataItem;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .line 222
    .line 223
    return-void
.end method
