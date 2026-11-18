.class public final Lteam/opay/business/picture/adapter/ImageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ImageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\r\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001=B;\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ#\u0010\u0010\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J#\u0010\u0015\u001a\u00020\u00142\n\u0010\u0012\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u0005\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001aR\"\u0010\u0006\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001a\u001a\u0004\u0008\u001d\u0010\u0018\"\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\u0007\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001aR\"\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u0016\u0010\n\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\u001aR$\u0010/\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R6\u00108\u001a\u0016\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0014\u0018\u0001008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R6\u0010<\u001a\u0016\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0014\u0018\u0001008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u00103\u001a\u0004\u0008:\u00105\"\u0004\u0008;\u00107\u00a8\u0006>"
    }
    d2 = {
        "Lteam/opay/business/picture/adapter/ImageAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;",
        "",
        "itemHeight",
        "itemWith",
        "maxNum",
        "layoutRes",
        "",
        "canDelete",
        "radiusImage",
        "<init>",
        "(IIIIZI)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "r",
        "(Landroid/view/ViewGroup;I)Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;",
        "holder",
        "position",
        "",
        "p",
        "(Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;I)V",
        "getItemCount",
        "()I",
        "a",
        "I",
        "b",
        "c",
        "getMaxNum",
        "setMaxNum",
        "(I)V",
        "d",
        "e",
        "Z",
        "m",
        "()Z",
        "setCanDelete",
        "(Z)V",
        "f",
        "Lteam/opay/business/picture/adapter/SourceData;",
        "g",
        "Lteam/opay/business/picture/adapter/SourceData;",
        "o",
        "()Lteam/opay/business/picture/adapter/SourceData;",
        "u",
        "(Lteam/opay/business/picture/adapter/SourceData;)V",
        "sourceData",
        "Lkotlin/Function2;",
        "",
        "h",
        "Lkotlin/jvm/functions/Function2;",
        "getClickCallback",
        "()Lkotlin/jvm/functions/Function2;",
        "s",
        "(Lkotlin/jvm/functions/Function2;)V",
        "clickCallback",
        "i",
        "n",
        "t",
        "deleteClick",
        "ItemVH",
        "business-picture_release"
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
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:Lteam/opay/business/picture/adapter/SourceData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIIZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput p1, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->a:I

    .line 4
    iput p2, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->b:I

    .line 5
    iput p3, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->c:I

    .line 6
    iput p4, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->d:I

    .line 7
    iput-boolean p5, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->e:Z

    .line 8
    iput p6, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->f:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lteam/opay/business/picture/adapter/ImageAdapter;-><init>(IIIIZI)V

    return-void
.end method

.method public static synthetic k(Lteam/opay/business/picture/adapter/ImageAdapter;Ljava/lang/Object;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/picture/adapter/ImageAdapter;->q(Lteam/opay/business/picture/adapter/ImageAdapter;Ljava/lang/Object;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Lteam/opay/business/picture/adapter/ImageAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public static final q(Lteam/opay/business/picture/adapter/ImageAdapter;Ljava/lang/Object;I)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->h:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->g:Lteam/opay/business/picture/adapter/SourceData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/business/picture/adapter/SourceData;->g()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->c:I

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/ranges/c;->f(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final n()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->i:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Lteam/opay/business/picture/adapter/SourceData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->g:Lteam/opay/business/picture/adapter/SourceData;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/adapter/ImageAdapter;->p(Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/adapter/ImageAdapter;->r(Landroid/view/ViewGroup;I)Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public p(Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;I)V
    .locals 2
    .param p1    # Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->g:Lteam/opay/business/picture/adapter/SourceData;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lteam/opay/business/picture/adapter/SourceData;->c(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1, v0, p2}, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;->b(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 21
    .line 22
    const-string v1, "itemView"

    .line 23
    .line 24
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lxb7;

    .line 28
    .line 29
    invoke-direct {v1, p0, v0, p2}, Lxb7;-><init>(Lteam/opay/business/picture/adapter/ImageAdapter;Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->d:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p1, p2, v2, v0, v1}, Let;->r(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget v0, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->a:I

    .line 20
    .line 21
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    .line 23
    iget v0, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->b:I

    .line 24
    .line 25
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 26
    .line 27
    new-instance p2, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;

    .line 28
    .line 29
    invoke-direct {p2, p0, p1}, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;-><init>(Lteam/opay/business/picture/adapter/ImageAdapter;Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    return-object p2
.end method

.method public final s(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->h:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final t(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->i:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final u(Lteam/opay/business/picture/adapter/SourceData;)V
    .locals 0
    .param p1    # Lteam/opay/business/picture/adapter/SourceData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/adapter/ImageAdapter;->g:Lteam/opay/business/picture/adapter/SourceData;

    .line 2
    .line 3
    return-void
.end method
