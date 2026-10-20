.class public final Lteam/opay/pay/transfer/contact/view/TransferContactFragment$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "TransferContactFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/pay/transfer/contact/view/TransferContactFragment$a",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "dx",
        "dy",
        "",
        "onScrolled",
        "(Landroidx/recyclerview/widget/RecyclerView;II)V",
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
.field public final synthetic a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final synthetic b:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$a;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$a;->b:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$a;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object p2, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$a;->b:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 16
    .line 17
    invoke-static {p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->i0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-ge p1, p2, :cond_2

    .line 30
    .line 31
    iget-object p2, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$a;->b:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 32
    .line 33
    invoke-static {p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->i0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const-string p3, "getData(...)"

    .line 42
    .line 43
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 51
    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->b()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    const/4 p3, 0x1

    .line 59
    if-ne p2, p3, :cond_2

    .line 60
    .line 61
    iget-object p2, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$a;->b:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 62
    .line 63
    invoke-static {p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->h0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iget-object p3, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$a;->b:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 68
    .line 69
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const/4 v0, 0x0

    .line 74
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    add-int/lit8 v2, v0, 0x1

    .line 85
    .line 86
    if-gez v0, :cond_0

    .line 87
    .line 88
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 89
    .line 90
    .line 91
    :cond_0
    check-cast v1, Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p3}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->i0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 106
    .line 107
    invoke-virtual {v3}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->h()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_1

    .line 116
    .line 117
    invoke-virtual {p3}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Lmi6;

    .line 122
    .line 123
    iget-object v1, v1, Lmi6;->h:Lteam/opay/core/android/views/InitialsLetterBar;

    .line 124
    .line 125
    if-eqz v1, :cond_1

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Lteam/opay/core/android/views/InitialsLetterBar;->setChoose(I)V

    .line 128
    .line 129
    .line 130
    :cond_1
    move v0, v2

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    return-void
.end method
