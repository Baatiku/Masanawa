.class public final Lteam/opay/core/card/CardIntroListPagerHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CardIntroListPagerAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010\n\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lteam/opay/core/card/CardIntroListPagerHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lub8;",
        "binding",
        "<init>",
        "(Lub8;)V",
        "",
        "Lteam/opay/core/card/IntroduceContextDto;",
        "list",
        "",
        "a",
        "(Ljava/util/List;)V",
        "Lub8;",
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
.field public final a:Lub8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lub8;)V
    .locals 1
    .param p1    # Lub8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lub8;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lteam/opay/core/card/CardIntroListPagerHolder;->a:Lub8;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 21
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/core/card/IntroduceContextDto;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "list"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lteam/opay/core/card/IntroduceContextDto;

    .line 36
    .line 37
    new-instance v4, Lteam/opay/core/card/MultiDataItemEntry;

    .line 38
    .line 39
    new-instance v15, Lteam/opay/core/card/BottomListData;

    .line 40
    .line 41
    invoke-virtual {v3}, Lteam/opay/core/card/IntroduceContextDto;->getIconUrl()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v3}, Lteam/opay/core/card/IntroduceContextDto;->getTitle()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v3}, Lteam/opay/core/card/IntroduceContextDto;->getContext()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v3}, Lteam/opay/core/card/IntroduceContextDto;->getSecondIconUrl()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-virtual {v3}, Lteam/opay/core/card/IntroduceContextDto;->getThirdIconUrl()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-virtual {v3}, Lteam/opay/core/card/IntroduceContextDto;->getSecondContext()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v12

    .line 65
    const/16 v18, 0x788

    .line 66
    .line 67
    const/16 v19, 0x0

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    const/4 v13, 0x0

    .line 71
    const/4 v14, 0x0

    .line 72
    const/4 v3, 0x0

    .line 73
    const/16 v16, 0x0

    .line 74
    .line 75
    const-string v17, "VERVE_VIRTUAL"

    .line 76
    .line 77
    move-object v5, v15

    .line 78
    move-object/from16 v20, v15

    .line 79
    .line 80
    move-object v15, v3

    .line 81
    invoke-direct/range {v5 .. v19}, Lteam/opay/core/card/BottomListData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 82
    .line 83
    .line 84
    const/4 v3, 0x2

    .line 85
    move-object/from16 v5, v20

    .line 86
    .line 87
    invoke-direct {v4, v3, v5}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    iget-object v1, v0, Lteam/opay/core/card/CardIntroListPagerHolder;->a:Lub8;

    .line 95
    .line 96
    iget-object v1, v1, Lub8;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    .line 98
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Lteam/opay/core/card/CardAdapter;

    .line 111
    .line 112
    invoke-direct {v1}, Lteam/opay/core/card/CardAdapter;-><init>()V

    .line 113
    .line 114
    .line 115
    iget-object v3, v0, Lteam/opay/core/card/CardIntroListPagerHolder;->a:Lub8;

    .line 116
    .line 117
    iget-object v3, v3, Lub8;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    .line 119
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method
