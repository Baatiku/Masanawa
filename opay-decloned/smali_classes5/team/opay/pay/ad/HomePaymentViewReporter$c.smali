.class public final Lteam/opay/pay/ad/HomePaymentViewReporter$c;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "HomePaymentViewReporter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/ad/HomePaymentViewReporter;->k(Landroidx/recyclerview/widget/RecyclerView;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/pay/ad/HomePaymentViewReporter$c",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "rv",
        "",
        "newState",
        "",
        "onScrollStateChanged",
        "(Landroidx/recyclerview/widget/RecyclerView;I)V",
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
.field public final synthetic a:Lteam/opay/pay/ad/HomePaymentViewReporter;


# direct methods
.method public constructor <init>(Lteam/opay/pay/ad/HomePaymentViewReporter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/ad/HomePaymentViewReporter$c;->a:Lteam/opay/pay/ad/HomePaymentViewReporter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    const-string v0, "rv"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/pay/ad/HomePaymentViewReporter$c;->a:Lteam/opay/pay/ad/HomePaymentViewReporter;

    .line 9
    .line 10
    invoke-static {p1}, Lteam/opay/pay/ad/HomePaymentViewReporter;->d(Lteam/opay/pay/ad/HomePaymentViewReporter;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
