.class public final Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BannerRecycleView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/dialog/widget/BannerRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewPagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0004\u0018\u00002\u0010\u0012\u000c\u0012\n0\u0002R\u00060\u0000R\u00020\u00030\u0001:\u0001 B\u0015\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\'\u0010\r\u001a\n0\u0002R\u00060\u0000R\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\'\u0010\u0012\u001a\u00020\u00112\u000e\u0010\u000f\u001a\n0\u0002R\u00060\u0000R\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R6\u0010\u001f\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;",
        "Lteam/opay/business/dialog/widget/BannerRecycleView;",
        "",
        "Lteam/opay/business/dialog/api/DialogEntity;",
        "dataList",
        "<init>",
        "(Lteam/opay/business/dialog/widget/BannerRecycleView;Ljava/util/List;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "n",
        "(Landroid/view/ViewGroup;I)Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;",
        "holder",
        "position",
        "",
        "l",
        "(Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;I)V",
        "getItemCount",
        "()I",
        "a",
        "Ljava/util/List;",
        "Lkotlin/Function2;",
        "b",
        "Lkotlin/jvm/functions/Function2;",
        "getOnItemClick",
        "()Lkotlin/jvm/functions/Function2;",
        "o",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onItemClick",
        "BindingViewHolder",
        "business-dialog_release"
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
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/business/dialog/api/DialogEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lteam/opay/business/dialog/api/DialogEntity;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final synthetic c:Lteam/opay/business/dialog/widget/BannerRecycleView;


# direct methods
.method public constructor <init>(Lteam/opay/business/dialog/widget/BannerRecycleView;Ljava/util/List;)V
    .locals 1
    .param p1    # Lteam/opay/business/dialog/widget/BannerRecycleView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/business/dialog/api/DialogEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "dataList"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;->c:Lteam/opay/business/dialog/widget/BannerRecycleView;

    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;->a:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic k(Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;Lteam/opay/business/dialog/api/DialogEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;->m(Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;Lteam/opay/business/dialog/api/DialogEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final m(Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;Lteam/opay/business/dialog/api/DialogEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;->b:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;->a:Ljava/util/List;

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

.method public l(Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;I)V
    .locals 5
    .param p1    # Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;
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
    iget-object v0, p0, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lteam/opay/business/dialog/api/DialogEntity;

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;->a()Lob3;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lob3;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 22
    .line 23
    const-string v1, "looperImg"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lteam/opay/business/dialog/api/DialogEntity;->getPicUrl()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget v2, Lteam/opay/core/http/R$drawable;->http_opay_logo:I

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Lle7;->d(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;->a()Lob3;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lob3;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    invoke-virtual {p2}, Lteam/opay/business/dialog/api/DialogEntity;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, ""

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    move-object v1, v2

    .line 52
    :cond_1
    const/4 v3, 0x0

    .line 53
    invoke-static {v1, v3}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;->a()Lob3;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v0, v0, Lob3;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    const-string v1, "looperTitle"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lteam/opay/business/dialog/api/DialogEntity;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/4 v4, 0x1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    const/4 v1, 0x0

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 88
    :goto_1
    xor-int/2addr v1, v4

    .line 89
    invoke-static {v0, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;->a()Lob3;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v0, v0, Lob3;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    invoke-virtual {p2}, Lteam/opay/business/dialog/api/DialogEntity;->getDesc()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-nez v1, :cond_4

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    move-object v2, v1

    .line 106
    :goto_2
    invoke-static {v2, v3}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 114
    .line 115
    const-string v1, "itemView"

    .line 116
    .line 117
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Llm0;

    .line 121
    .line 122
    invoke-direct {v1, p0, p1, p2}, Llm0;-><init>(Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;Lteam/opay/business/dialog/api/DialogEntity;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public n(Landroid/view/ViewGroup;I)Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;
    .locals 2
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
    new-instance p2, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, p1, v1}, Lob3;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lob3;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "inflate(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p0, p1}, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;-><init>(Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;Lob3;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public final o(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lteam/opay/business/dialog/api/DialogEntity;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;->b:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;->l(Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;->n(Landroid/view/ViewGroup;I)Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter$BindingViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
