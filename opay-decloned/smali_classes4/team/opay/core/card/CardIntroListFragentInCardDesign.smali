.class public final Lteam/opay/core/card/CardIntroListFragentInCardDesign;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "CardIntroListFragentInCardDesign.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/card/CardIntroListFragentInCardDesign$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFragmentV2<",
        "Lub8;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/core/card/CardIntroListFragentInCardDesign;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lub8;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "j",
        "Companion",
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


# static fields
.field public static final j:Lteam/opay/core/card/CardIntroListFragentInCardDesign$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/card/CardIntroListFragentInCardDesign$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/card/CardIntroListFragentInCardDesign$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/card/CardIntroListFragentInCardDesign;->j:Lteam/opay/core/card/CardIntroListFragentInCardDesign$Companion;

    .line 8
    .line 9
    const-string v0, "key_data"

    .line 10
    .line 11
    sput-object v0, Lteam/opay/core/card/CardIntroListFragentInCardDesign;->k:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "key_position"

    .line 14
    .line 15
    sput-object v0, Lteam/opay/core/card/CardIntroListFragentInCardDesign;->l:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/card/CardIntroListFragentInCardDesign$1;->INSTANCE:Lteam/opay/core/card/CardIntroListFragentInCardDesign$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 22
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super/range {p0 .. p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lteam/opay/core/card/CardIntroListFragentInCardDesign;->k:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "null cannot be cast to non-null type team.opay.core.card.CardDesignListData"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v0, Lteam/opay/core/card/CardDesignListData;

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lub8;

    .line 33
    .line 34
    iget-object v1, v1, Lub8;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lteam/opay/core/card/CardAdapter;

    .line 49
    .line 50
    invoke-direct {v1}, Lteam/opay/core/card/CardAdapter;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lub8;

    .line 58
    .line 59
    iget-object v2, v2, Lub8;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lteam/opay/core/card/CardDesignListData;->getIntroduceList()Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_0

    .line 69
    .line 70
    new-instance v3, Ljava/util/ArrayList;

    .line 71
    .line 72
    const/16 v4, 0xa

    .line 73
    .line 74
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_1

    .line 90
    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Lteam/opay/core/card/IntroduceContextDto;

    .line 96
    .line 97
    new-instance v5, Lteam/opay/core/card/MultiDataItemEntry;

    .line 98
    .line 99
    new-instance v15, Lteam/opay/core/card/BottomListData;

    .line 100
    .line 101
    invoke-virtual {v4}, Lteam/opay/core/card/IntroduceContextDto;->getIconUrl()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v4}, Lteam/opay/core/card/IntroduceContextDto;->getTitle()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v4}, Lteam/opay/core/card/IntroduceContextDto;->getContext()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-virtual {v4}, Lteam/opay/core/card/IntroduceContextDto;->getSecondIconUrl()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    invoke-virtual {v4}, Lteam/opay/core/card/IntroduceContextDto;->getThirdIconUrl()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    invoke-virtual {v4}, Lteam/opay/core/card/IntroduceContextDto;->getSecondContext()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    invoke-virtual {v0}, Lteam/opay/core/card/CardDesignListData;->getCardDesignUrl()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v18

    .line 129
    const/16 v19, 0x788

    .line 130
    .line 131
    const/16 v20, 0x0

    .line 132
    .line 133
    const/4 v10, 0x0

    .line 134
    const/4 v14, 0x0

    .line 135
    const/4 v4, 0x0

    .line 136
    const/16 v16, 0x0

    .line 137
    .line 138
    const/16 v17, 0x0

    .line 139
    .line 140
    move-object v6, v15

    .line 141
    move-object/from16 v21, v15

    .line 142
    .line 143
    move-object v15, v4

    .line 144
    invoke-direct/range {v6 .. v20}, Lteam/opay/core/card/BottomListData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 145
    .line 146
    .line 147
    const/4 v4, 0x2

    .line 148
    move-object/from16 v6, v21

    .line 149
    .line 150
    invoke-direct {v5, v4, v6}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_0
    const/4 v3, 0x0

    .line 158
    :cond_1
    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method
