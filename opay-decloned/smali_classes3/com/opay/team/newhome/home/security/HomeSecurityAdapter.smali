.class public final Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HomeSecurityAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010!\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J1\u0010\u000f\u001a\u00020\u00052\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001f\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR$\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u001c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00040!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0018\u0010\'\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0018\u0010*\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)\u00a8\u0006+"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;",
        "Lkotlin/Function1;",
        "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
        "",
        "onItemClickCallback",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "",
        "list",
        "",
        "questionId",
        "",
        "answer",
        "m",
        "(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "l",
        "(Landroid/view/ViewGroup;I)Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;",
        "position",
        "getItemViewType",
        "(I)I",
        "getItemCount",
        "()I",
        "holder",
        "k",
        "(Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;I)V",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "",
        "b",
        "Ljava/util/List;",
        "dataList",
        "c",
        "Ljava/lang/Long;",
        "mQuestionId",
        "d",
        "Ljava/lang/String;",
        "mAnswer",
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
.field public a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->b:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/opay/team/newhome/reward/SecurityOptionContent;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->i()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x1

    .line 23
    :goto_0
    return p1
.end method

.method public k(Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;I)V
    .locals 1
    .param p1    # Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;
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
    iget-object v0, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lcom/opay/team/newhome/reward/SecurityOptionContent;

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->getItemCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, p2, v0}, Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;->c(Lcom/opay/team/newhome/reward/SecurityOptionContent;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    const-string v2, "inflate(...)"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eq p2, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    if-eq p2, v1, :cond_0

    .line 22
    .line 23
    new-instance p2, Lcom/opay/team/newhome/home/security/holder/SecurityWordHolder;

    .line 24
    .line 25
    invoke-static {v0, p1, v3}, Le27;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le27;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->c:Ljava/lang/Long;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->d:Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {p2, p1, v0, v1}, Lcom/opay/team/newhome/home/security/holder/SecurityWordHolder;-><init>(Le27;Ljava/lang/Long;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;->g(Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p2, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;

    .line 46
    .line 47
    invoke-static {v0, p1, v3}, Ld27;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ld27;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->c:Ljava/lang/Long;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->d:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {p2, p1, v0, v1}, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;-><init>(Ld27;Ljava/lang/Long;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;->g(Lkotlin/jvm/functions/Function1;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance p2, Lcom/opay/team/newhome/home/security/holder/SecurityPicHolder;

    .line 68
    .line 69
    invoke-static {v0, p1, v3}, Lc27;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc27;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->c:Ljava/lang/Long;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->d:Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {p2, p1, v0, v1}, Lcom/opay/team/newhome/home/security/holder/SecurityPicHolder;-><init>(Lc27;Ljava/lang/Long;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;->g(Lkotlin/jvm/functions/Function1;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-object p2
.end method

.method public final m(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")V"
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
    iput-object p2, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->c:Ljava/lang/Long;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->d:Ljava/lang/String;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->b:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->b:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->k(Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/security/HomeSecurityAdapter;->l(Landroid/view/ViewGroup;I)Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
