.class public final Lcashier/normalpay/CashierFragment$a;
.super Ljava/lang/Object;
.source "CashierFragment.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/normalpay/CashierFragment;->addObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcashier/util/WsAdData;",
        "adData",
        "",
        "c",
        "(Lcashier/util/WsAdData;Ljr2;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic a:Lcashier/normalpay/CashierFragment;


# direct methods
.method public constructor <init>(Lcashier/normalpay/CashierFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/normalpay/CashierFragment$a;->a:Lcashier/normalpay/CashierFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lcashier/util/WsAdData;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcashier/util/WsAdData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/util/WsAdData;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcashier/util/WsAdData;->getAd_position_code()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "ng_checkout_notice"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcashier/normalpay/CashierFragment$a;->a:Lcashier/normalpay/CashierFragment;

    .line 14
    .line 15
    invoke-static {p1}, Lcashier/normalpay/CashierFragment;->G(Lcashier/normalpay/CashierFragment;)Lcashier/model/CashierViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Lcashier/normalpay/CashierFragment$a;->a:Lcashier/normalpay/CashierFragment;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string v0, "requireActivity()"

    .line 26
    .line 27
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcashier/model/CashierViewModel;->r0(Landroidx/fragment/app/FragmentActivity;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcashier/util/WsAdData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcashier/normalpay/CashierFragment$a;->c(Lcashier/util/WsAdData;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
