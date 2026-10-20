.class public final Lteam/opay/business/widget/looper/OmsPagerSnapHelper;
.super Landroidx/recyclerview/widget/PagerSnapHelper;
.source "OmsPagerSnapHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\u0013\u0010\u0016\u001a\u00020\u0006*\u00020\u0006H\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R$\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00048\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0019\u001a\u0004\u0008\u001d\u0010\u0014R$\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\n0\u001fj\u0008\u0012\u0004\u0012\u00020\n` 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R$\u0010+\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006,"
    }
    d2 = {
        "Lteam/opay/business/widget/looper/OmsPagerSnapHelper;",
        "Landroidx/recyclerview/widget/PagerSnapHelper;",
        "<init>",
        "()V",
        "",
        "scroll",
        "",
        "childWidth",
        "p",
        "(IF)F",
        "Lca7;",
        "onPageChangeListener",
        "",
        "k",
        "(Lca7;)V",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "attachToRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "o",
        "()I",
        "q",
        "l",
        "(F)F",
        "c",
        "I",
        "mOffset",
        "value",
        "d",
        "n",
        "mPosition",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "e",
        "Ljava/util/ArrayList;",
        "selectedListeners",
        "Lfa7;",
        "f",
        "Lfa7;",
        "m",
        "()Lfa7;",
        "r",
        "(Lfa7;)V",
        "mPageTransformer",
        "business-widget_release"
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
.field public c:I

.field public d:I

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lca7;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lfa7;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->e:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic f(Lteam/opay/business/widget/looper/OmsPagerSnapHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic g(Lteam/opay/business/widget/looper/OmsPagerSnapHelper;IF)F
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->p(IF)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic h(Lteam/opay/business/widget/looper/OmsPagerSnapHelper;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lteam/opay/business/widget/looper/OmsPagerSnapHelper;I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic j(Lteam/opay/business/widget/looper/OmsPagerSnapHelper;I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->d:I

    .line 2
    .line 3
    return-void
.end method

.method private final p(IF)F
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    div-float/2addr p1, p2

    .line 3
    return p1
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Lteam/opay/business/widget/looper/OmsPagerSnapHelper$a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lteam/opay/business/widget/looper/OmsPagerSnapHelper$a;-><init>(Lteam/opay/business/widget/looper/OmsPagerSnapHelper;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final k(Lca7;)V
    .locals 1
    .param p1    # Lca7;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "onPageChangeListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->e:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->e:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final l(F)F
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final m()Lfa7;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->f:Lfa7;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final o()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->d:I

    .line 6
    .line 7
    return v0
.end method

.method public final q()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->d:I

    .line 3
    .line 4
    return-void
.end method

.method public final r(Lfa7;)V
    .locals 0
    .param p1    # Lfa7;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->f:Lfa7;

    .line 2
    .line 3
    return-void
.end method
