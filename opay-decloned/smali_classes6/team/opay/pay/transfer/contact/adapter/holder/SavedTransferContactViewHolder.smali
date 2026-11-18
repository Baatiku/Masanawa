.class public final Lteam/opay/pay/transfer/contact/adapter/holder/SavedTransferContactViewHolder;
.super Lteam/opay/pay/transfer/contact/adapter/holder/TransferContactViewHolder;
.source "SavedTransferContactViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0089\u0001\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0014\u0010\u000c\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0014\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000e2.\u0010\u0014\u001a*\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00120\u0010j\u0014\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0012`\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/adapter/holder/SavedTransferContactViewHolder;",
        "Lteam/opay/pay/transfer/contact/adapter/holder/TransferContactViewHolder;",
        "Led8;",
        "binding",
        "<init>",
        "(Led8;)V",
        "",
        "position",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "data",
        "Lkotlin/Function1;",
        "",
        "itemClicked",
        "moreClicked",
        "",
        "dataList",
        "Ljava/util/HashMap;",
        "",
        "",
        "Lkotlin/collections/HashMap;",
        "groupByLettersData",
        "a",
        "(ILteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/util/HashMap;)V",
        "Led8;",
        "Lteam/opay/pay/transfer/contact/adapter/TransferSavedContactAdapter;",
        "b",
        "Lid8;",
        "c",
        "()Lteam/opay/pay/transfer/contact/adapter/TransferSavedContactAdapter;",
        "savedContactListAdapter",
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
.field public final a:Led8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Led8;)V
    .locals 2
    .param p1    # Led8;
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
    invoke-virtual {p1}, Led8;->a()Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getRoot(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lteam/opay/pay/transfer/contact/adapter/holder/TransferContactViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/adapter/holder/SavedTransferContactViewHolder;->a:Led8;

    .line 19
    .line 20
    new-instance p1, Lq3d;

    .line 21
    .line 22
    invoke-direct {p1}, Lq3d;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/adapter/holder/SavedTransferContactViewHolder;->b:Lid8;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic b()Lteam/opay/pay/transfer/contact/adapter/TransferSavedContactAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/transfer/contact/adapter/holder/SavedTransferContactViewHolder;->d()Lteam/opay/pay/transfer/contact/adapter/TransferSavedContactAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final d()Lteam/opay/pay/transfer/contact/adapter/TransferSavedContactAdapter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/contact/adapter/TransferSavedContactAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/transfer/contact/adapter/TransferSavedContactAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a(ILteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 1
    .param p2    # Lteam/opay/pay/transfer/contact/bean/TransferContactData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string p1, "data"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "itemClicked"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "moreClicked"

    .line 12
    .line 13
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "dataList"

    .line 17
    .line 18
    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "groupByLettersData"

    .line 22
    .line 23
    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/adapter/holder/SavedTransferContactViewHolder;->a:Led8;

    .line 27
    .line 28
    iget-object p1, p1, Led8;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    new-instance p5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p6

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-direct {p5, p6, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 41
    .line 42
    .line 43
    new-instance p5, Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 44
    .line 45
    invoke-direct {p5}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p5, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->S(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/adapter/holder/SavedTransferContactViewHolder;->c()Lteam/opay/pay/transfer/contact/adapter/TransferSavedContactAdapter;

    .line 55
    .line 56
    .line 57
    move-result-object p5

    .line 58
    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getDataList()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/adapter/holder/SavedTransferContactViewHolder;->c()Lteam/opay/pay/transfer/contact/adapter/TransferSavedContactAdapter;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2, p1, p3, p4}, Lteam/opay/pay/transfer/contact/adapter/TransferSavedContactAdapter;->s(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    return-void
.end method

.method public final c()Lteam/opay/pay/transfer/contact/adapter/TransferSavedContactAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/adapter/holder/SavedTransferContactViewHolder;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transfer/contact/adapter/TransferSavedContactAdapter;

    .line 8
    .line 9
    return-object v0
.end method
