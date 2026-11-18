.class public final Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;
.super Landroid/widget/PopupWindow;
.source "KycSelectNamePopWindow.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0016\u0008\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\rR\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0016\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;",
        "Landroid/widget/PopupWindow;",
        "Landroid/content/Context;",
        "context",
        "",
        "Lteam/opay/pay/kyc/base/KycNameVo;",
        "nameList",
        "Lkotlin/Function1;",
        "",
        "selectedItem",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V",
        "dismiss",
        "()V",
        "d",
        "a",
        "Ljava/util/List;",
        "Lw0b;",
        "b",
        "Lw0b;",
        "viewBinding",
        "Lteam/opay/pay/kyc/base/dialog/KycNameItemSelectAdapter;",
        "c",
        "Lid8;",
        "()Lteam/opay/pay/kyc/base/dialog/KycNameItemSelectAdapter;",
        "selectAdapter",
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
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/base/KycNameVo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lw0b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/base/KycNameVo;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/kyc/base/KycNameVo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;->a:Ljava/util/List;

    .line 4
    new-instance p2, Lv58;

    invoke-direct {p2, p0, p3}, Lv58;-><init>(Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;Lkotlin/jvm/functions/Function1;)V

    invoke-static {p2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p2

    iput-object p2, p0, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;->c:Lid8;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lteam/opay/pay/R$layout;->osdk_popup_window_kyc_select_name:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 6
    invoke-static {p2}, Lw0b;->bind(Landroid/view/View;)Lw0b;

    move-result-object p2

    iput-object p2, p0, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;->b:Lw0b;

    .line 7
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lw0b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 10
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 11
    invoke-static {p1}, Ljmf;->r(Landroid/content/Context;)I

    move-result p1

    const/16 p2, 0x20

    invoke-static {p2}, Ljmf;->d(I)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p1, -0x2

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;->d()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;Lkotlin/jvm/functions/Function1;)Lteam/opay/pay/kyc/base/dialog/KycNameItemSelectAdapter;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;->e(Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;Lkotlin/jvm/functions/Function1;)Lteam/opay/pay/kyc/base/dialog/KycNameItemSelectAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;Lkotlin/jvm/functions/Function1;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;->f(Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;Lkotlin/jvm/functions/Function1;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final e(Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;Lkotlin/jvm/functions/Function1;)Lteam/opay/pay/kyc/base/dialog/KycNameItemSelectAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/base/dialog/KycNameItemSelectAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/kyc/base/dialog/KycNameItemSelectAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lw58;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lw58;-><init>(Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final f(Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;Lkotlin/jvm/functions/Function1;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string p3, "getData(...)"

    .line 6
    .line 7
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lteam/opay/pay/kyc/base/KycNameVo;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;->dismiss()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final c()Lteam/opay/pay/kyc/base/dialog/KycNameItemSelectAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/dialog/KycNameItemSelectAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;->b:Lw0b;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lw0b;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;->c()Lteam/opay/pay/kyc/base/dialog/KycNameItemSelectAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;->c()Lteam/opay/pay/kyc/base/dialog/KycNameItemSelectAdapter;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;->a:Ljava/util/List;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;->b:Lw0b;

    .line 6
    .line 7
    return-void
.end method
