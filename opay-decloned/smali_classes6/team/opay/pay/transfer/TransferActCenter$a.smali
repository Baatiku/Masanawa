.class public final Lteam/opay/pay/transfer/TransferActCenter$a;
.super Ljava/lang/Object;
.source "TransferActCenter.kt"

# interfaces
.implements Lteam/opay/pay/wallet/view/MarqueeView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/TransferActCenter;->i(Ljava/util/List;Lteam/opay/pay/wallet/view/MarqueeView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/pay/transfer/TransferActCenter$a",
        "Lteam/opay/pay/wallet/view/MarqueeView$a;",
        "",
        "position",
        "Landroid/widget/TextView;",
        "textView",
        "",
        "a",
        "(ILandroid/widget/TextView;)V",
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
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lteam/opay/pay/transfer/TransferActCenter;


# direct methods
.method public constructor <init>(ILjava/util/List;Lteam/opay/pay/transfer/TransferActCenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lteam/opay/pay/transfer/TransferActCenter;",
            ")V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lteam/opay/pay/transfer/TransferActCenter$a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/transfer/TransferActCenter$a;->b:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/transfer/TransferActCenter$a;->c:Lteam/opay/pay/transfer/TransferActCenter;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(ILandroid/widget/TextView;)V
    .locals 2

    .line 1
    const-string v0, "textView"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lteam/opay/pay/transfer/TransferActCenter$a;->a:I

    .line 7
    .line 8
    const/16 v0, 0xb

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eq p2, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xd

    .line 14
    .line 15
    if-eq p2, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p2, Lx7b;->a:Lx7b;

    .line 19
    .line 20
    const-string v0, "aa_transfer_non_opay_users_view_refer_click"

    .line 21
    .line 22
    new-array v1, v1, [Lkotlin/Pair;

    .line 23
    .line 24
    invoke-virtual {p2, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget-object p2, Lx7b;->a:Lx7b;

    .line 29
    .line 30
    const-string v0, "new_aa_page_view_refer_click"

    .line 31
    .line 32
    new-array v1, v1, [Lkotlin/Pair;

    .line 33
    .line 34
    invoke-virtual {p2, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object p2, p0, Lteam/opay/pay/transfer/TransferActCenter$a;->b:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    add-int/lit8 p2, p2, -0x1

    .line 44
    .line 45
    if-ne p1, p2, :cond_5

    .line 46
    .line 47
    sget-object p1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 48
    .line 49
    const-class p2, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 56
    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    sget-object p2, Ld00;->a:Ld00;

    .line 60
    .line 61
    invoke-virtual {p2}, Ld00;->e()Landroid/app/Activity;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-nez p2, :cond_2

    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/transfer/TransferActCenter$a;->c:Lteam/opay/pay/transfer/TransferActCenter;

    .line 69
    .line 70
    invoke-virtual {v0}, Lteam/opay/pay/transfer/TransferActCenter;->g()Lteam/opay/pay/api/AATransferTrial;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0}, Lteam/opay/pay/api/AATransferTrial;->f()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const/4 v0, 0x0

    .line 82
    :goto_1
    if-nez v0, :cond_4

    .line 83
    .line 84
    const-string v0, ""

    .line 85
    .line 86
    :cond_4
    const-string v1, "aaTransferTrail"

    .line 87
    .line 88
    invoke-interface {p1, p2, v0, v1}, Lteam/opay/swarmfoundation/action/IActionManager;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    return-void
.end method
