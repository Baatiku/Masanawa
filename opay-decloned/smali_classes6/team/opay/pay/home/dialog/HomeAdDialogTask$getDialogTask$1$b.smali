.class public final Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b;
.super Ljava/lang/Object;
.source "HomeAdDialogTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

.field public final synthetic b:Lzv1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzv1<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lzr2;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/dialog/HomeAdDialogTask;Lzv1;Lzr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/dialog/HomeAdDialogTask;",
            "Lzv1<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Lzr2;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b;->a:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b;->b:Lzv1;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b;->c:Lzr2;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b;->a:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 4
    .line 5
    invoke-static {p1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->o(Lteam/opay/pay/home/dialog/HomeAdDialogTask;)Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lteam/opay/pay/base/FragmentKt;->m(Landroidx/fragment/app/Fragment;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b;->a:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 17
    .line 18
    invoke-static {p1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->p(Lteam/opay/pay/home/dialog/HomeAdDialogTask;)Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->m0()Lteam/opay/odialog/net/AdDataItem;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAdpCode()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "interstitial_ad"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b;->a:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 42
    .line 43
    new-instance v1, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b$a;

    .line 44
    .line 45
    iget-object v2, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b;->b:Lzv1;

    .line 46
    .line 47
    iget-object v3, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b;->c:Lzr2;

    .line 48
    .line 49
    invoke-direct {v1, v0, v2, v3}, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b$a;-><init>(Lteam/opay/pay/home/dialog/HomeAdDialogTask;Lzv1;Lzr2;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0, p1, v1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->r(Lteam/opay/pay/home/dialog/HomeAdDialogTask;Lteam/opay/odialog/net/AdDataItem;Lkotlin/jvm/functions/Function2;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b;->a:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 57
    .line 58
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b;->b:Lzv1;

    .line 59
    .line 60
    iget-object v1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b;->c:Lzr2;

    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Lteam/opay/pay/home/dialog/HomeDialogTask;->i(Ljr2;Lzr2;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b;->a(Z)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p1
.end method
