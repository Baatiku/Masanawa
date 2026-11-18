.class public final Lteam/opay/sme/store/widget/RankingView;
.super Landroid/widget/FrameLayout;
.source "RankingView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/sme/store/widget/RankingView$RankindAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001:\u0001*B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u0010\u001a\u00020\n2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001dR\u001f\u0010&\u001a\u00060!R\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R\u001c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006+"
    }
    d2 = {
        "Lteam/opay/sme/store/widget/RankingView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "onAttachedToWindow",
        "()V",
        "",
        "Lteam/opay/sme/store/api/ReportRankInfo;",
        "list",
        "setRankingList",
        "(Ljava/util/List;)V",
        "Ltwd;",
        "a",
        "Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;",
        "getBinding",
        "()Ltwd;",
        "binding",
        "",
        "b",
        "Ljava/lang/String;",
        "rankingTitle",
        "c",
        "I",
        "rankingColor",
        "d",
        "showCount",
        "Lteam/opay/sme/store/widget/RankingView$RankindAdapter;",
        "e",
        "Lid8;",
        "getAdapter",
        "()Lteam/opay/sme/store/widget/RankingView$RankindAdapter;",
        "adapter",
        "f",
        "Ljava/util/List;",
        "datas",
        "RankindAdapter",
        "business-sme-store_release"
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
.field public static final synthetic g:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:I

.field public d:I

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/ReportRankInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/sme/store/databinding/SmeStoreLayoutRankingViewBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/sme/store/widget/RankingView;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/sme/store/widget/RankingView;->g:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lteam/opay/sme/store/widget/RankingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lteam/opay/sme/store/widget/RankingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const-string v0, "from(getContext())"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 7
    const-class v2, Ltwd;

    const/4 v4, 0x0

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;-><init>(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    iput-object p3, p0, Lteam/opay/sme/store/widget/RankingView;->a:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 9
    const-string p3, ""

    iput-object p3, p0, Lteam/opay/sme/store/widget/RankingView;->b:Ljava/lang/String;

    const/4 p3, -0x1

    .line 10
    iput p3, p0, Lteam/opay/sme/store/widget/RankingView;->c:I

    const/4 v0, 0x3

    .line 11
    iput v0, p0, Lteam/opay/sme/store/widget/RankingView;->d:I

    .line 12
    new-instance v1, Locc;

    invoke-direct {v1, p0}, Locc;-><init>(Lteam/opay/sme/store/widget/RankingView;)V

    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v1

    iput-object v1, p0, Lteam/opay/sme/store/widget/RankingView;->e:Lid8;

    .line 13
    sget-object v1, Lteam/opay/sme/store/R$styleable;->RankingView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget p2, Lteam/opay/sme/store/R$styleable;->RankingView_rv_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "Ranking"

    :cond_0
    iput-object p2, p0, Lteam/opay/sme/store/widget/RankingView;->b:Ljava/lang/String;

    .line 15
    sget p2, Lteam/opay/sme/store/R$styleable;->RankingView_rv_show_item_count:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lteam/opay/sme/store/widget/RankingView;->d:I

    .line 16
    sget p2, Lteam/opay/sme/store/R$styleable;->RankingView_rv_progress_color:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lteam/opay/sme/store/widget/RankingView;->c:I

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/sme/store/widget/RankingView;->f:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/sme/store/widget/RankingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/sme/store/widget/RankingView;)Lteam/opay/sme/store/widget/RankingView$RankindAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/widget/RankingView;->c(Lteam/opay/sme/store/widget/RankingView;)Lteam/opay/sme/store/widget/RankingView$RankindAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/sme/store/widget/RankingView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/widget/RankingView;->d(Lteam/opay/sme/store/widget/RankingView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lteam/opay/sme/store/widget/RankingView;)Lteam/opay/sme/store/widget/RankingView$RankindAdapter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;-><init>(Lteam/opay/sme/store/widget/RankingView;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final d(Lteam/opay/sme/store/widget/RankingView;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/sme/store/widget/RankingView;->getBinding()Ltwd;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltwd;->b:Lteam/opay/core/widget/fillet/CorpImageView;

    .line 6
    .line 7
    const-string v1, "iconShowMore"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lteam/opay/sme/store/widget/RankingView;->getAdapter()Lteam/opay/sme/store/widget/RankingView$RankindAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object p0, p0, Lteam/opay/sme/store/widget/RankingView;->f:Ljava/util/List;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->setDataList(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private final getAdapter()Lteam/opay/sme/store/widget/RankingView$RankindAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/widget/RankingView;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getBinding()Ltwd;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/widget/RankingView;->a:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/sme/store/widget/RankingView;->g:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;->f(Landroid/view/ViewGroup;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ltwd;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/sme/store/widget/RankingView;->getBinding()Ltwd;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Ltwd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    iget-object v1, p0, Lteam/opay/sme/store/widget/RankingView;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lteam/opay/sme/store/widget/RankingView;->getBinding()Ltwd;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Ltwd;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    invoke-direct {p0}, Lteam/opay/sme/store/widget/RankingView;->getAdapter()Lteam/opay/sme/store/widget/RankingView$RankindAdapter;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget v2, p0, Lteam/opay/sme/store/widget/RankingView;->c:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->n(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lteam/opay/sme/store/widget/RankingView;->getBinding()Ltwd;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Ltwd;->b:Lteam/opay/core/widget/fillet/CorpImageView;

    .line 38
    .line 39
    const-string v1, "iconShowMore"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lpcc;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lpcc;-><init>(Lteam/opay/sme/store/widget/RankingView;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final setRankingList(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/ReportRankInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/sme/store/widget/RankingView;->f:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/sme/store/api/ReportRankInfo;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/sme/store/api/ReportRankInfo;->d()Lteam/opay/core/common/amount/MoneyAmount;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/core/common/amount/MoneyAmount;->getValue()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    :cond_0
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 35
    .line 36
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    div-int/lit8 v0, v0, 0x8

    .line 45
    .line 46
    add-int/2addr v1, v0

    .line 47
    invoke-direct {p0}, Lteam/opay/sme/store/widget/RankingView;->getAdapter()Lteam/opay/sme/store/widget/RankingView$RankindAdapter;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v1}, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->m(I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget v1, p0, Lteam/opay/sme/store/widget/RankingView;->d:I

    .line 59
    .line 60
    if-le v0, v1, :cond_2

    .line 61
    .line 62
    invoke-direct {p0}, Lteam/opay/sme/store/widget/RankingView;->getAdapter()Lteam/opay/sme/store/widget/RankingView$RankindAdapter;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v1, 0x0

    .line 67
    iget v2, p0, Lteam/opay/sme/store/widget/RankingView;->d:I

    .line 68
    .line 69
    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->setDataList(Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lteam/opay/sme/store/widget/RankingView;->getBinding()Ltwd;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p1, p1, Ltwd;->b:Lteam/opay/core/widget/fillet/CorpImageView;

    .line 81
    .line 82
    const-string v0, "iconShowMore"

    .line 83
    .line 84
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-direct {p0}, Lteam/opay/sme/store/widget/RankingView;->getAdapter()Lteam/opay/sme/store/widget/RankingView$RankindAdapter;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0, p1}, Lteam/opay/sme/store/widget/RankingView$RankindAdapter;->setDataList(Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method
